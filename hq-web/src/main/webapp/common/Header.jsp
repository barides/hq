<%@ page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="/common/Error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://struts.apache.org/tags-html-el" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/hq.tld" prefix="hq" %>

<%--
  NOTE: This copyright does *not* cover user programs that use HQ
  program services by normal system calls through the application
  program interfaces provided as part of the Hyperic Plug-in Development
  Kit or the Hyperic Client Development Kit - this is merely considered
  normal use of the program, and does *not* fall under the heading of
  "derived work".
  
  Copyright (C) [2004-2009], Hyperic, Inc.
  This file is part of HQ.
  
  HQ is free software; you can redistribute it and/or modify
  it under the terms version 2 of the GNU General Public License as
  published by the Free Software Foundation. This program is distributed
  in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
  even the implied warranty of MERCHANTABILITY or FITNESS FOR A
  PARTICULAR PURPOSE. See the GNU General Public License for more
  details.
  
  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
  USA.
 --%>

<script type="text/javascript">
    function getUpdateStatus(opt) {
        if (opt == "<fmt:message key="header.Acknowledge"/>") {
        	var postData = { update: true};
            var updateUrl = 'Dashboard.do?';
            hqDojo.xhrPost({
         	 	url: updateUrl,
         	 	content: postData,
         	 	load: function(data) {
         	 	hqDojo.style("updateLink", "display", "none");
         	 	updateDialog.hide();
        		}
       		});
        }
      
    }
    
    var resourceURL = '<html:rewrite action="/Resource" />';
	var userURL = '<html:rewrite action="/admin/user/UserAdmin" />';
    var searchWidget = new hyperic.widget.search(hqDojo, {search:'/app/search'}, 3, {keyCode: 83, ctrl: true});
    
    hqDojo.ready(function(){ 
        activateHeaderTab(hqDojo);
        searchWidget.create();
        //Connect the events for the box, cancel and search buttons
        hqDojo.connect(searchWidget.searchBox, "onkeypress", searchWidget, "search");
         // What should the hot-keys do?
        hqDojo.subscribe('enter', searchWidget, "search");
        
        refreshAlerts();
    });
    
    <!--
    var refreshCount = 0;
                                                                                  
	function refreshAlerts() {
    	refreshCount++;
	
    	hqDojo.xhrGet({
    		url: "<html:rewrite page="/common/RecentAlerts.jsp"/>",
    		load: showRecentAlertResponse
    	});
    }

    function showRecentAlertResponse(response, args) {
      	if (response.indexOf('recentAlertsText') > 0) {
        	hqDojo.style("headerAlerts", "display", "");
        	hqDojo.byId("recentAlerts").innerHTML = response;
      	} else {
        	refreshCount = 31;
      	}

      	if (refreshCount < 30) {
        	setTimeout( "refreshAlerts()", 60*1000 );
      	} else if (autoLogout) {
    	  	top.location.href = "<html:rewrite action="/j_spring_security_logout"/>";
      	}
    }

    var useBreadcrumbHrefIfAvailable = function(link) {
		var browseInput = hqDojo.byId("browseUrlInput"); // Generated by bread crumb tag

		if (browseInput != null) {
			 var url = browseInput.value;

			 if (url != null && url.length > 0) {
				 link.href = url;
			 }		 
		}
    }
    
    //-->
      </script>
    <div id="header">
    <div id="headerLogo" title="Home" onclick="location.href='<html:rewrite action="/Dashboard" />'">&nbsp;</div>
    <div id="navTabContainer">
        <c:set var="pageURL" value="${requestURL}"/>
        <div id="dashTab" class="tab">
        	<a href="<html:rewrite page="/Dashboard.do" />"><fmt:message key="header.dashboard"/></a>
        </div>
        <div id="resTab" class="tab">
        	<a href="<html:rewrite page="/ResourceHub.do"/>" onclick="useBreadcrumbHrefIfAvailable(this);"><fmt:message key="header.resources"/></a>
        	<ul class="root">
        		<li>
        			<a href="<html:rewrite page="/ResourceHub.do"/>" onclick="useBreadcrumbHrefIfAvailable(this);"><fmt:message key="header.Browse"/></a>
        		</li>
                <tiles:insert definition=".header.optional.tabs">
                	<tiles:put name="location" value="resources"/>
                </tiles:insert>
                <li class="hasSubmenu">
                	<a href=""><fmt:message key=".dashContent.recentResources"/></a>
                  	<ul>
                    	<tiles:insert definition=".toolbar.recentResources"/>
                  	</ul>
                </li>
        	</ul>
        </div>
        <div id="analyzeTab" class="tab">
        	<a href="#"><fmt:message key="header.analyze"/></a>
        	<ul class="root">
              	<tiles:insert definition=".header.optional.tabs">
                  	<tiles:put name="location" value="tracking"/>
              	</tiles:insert>
          	</ul>
        </div>
        <div id="adminTab" class="tab">
        	<a href="<html:rewrite page="/Admin.do" />"><fmt:message key="header.admin"/></a>
        </div>
    </div>
    <script type="text/javascript">
	    hqDojo.ready(function() {
	    	var menu = hqDojo.byId("navTabContainer");
	    	
	    	hqDojo.query(".tab", menu).onmouseenter(function(e) {
	    		hqDojo.addClass(e.currentTarget, "over");
	    	}).onmouseleave(function(e) {
	    		hqDojo.removeClass(e.currentTarget, "over")
	    	});
	    	
	    	hqDojo.query("li", menu).onmouseover(function(e) {
	    		hqDojo.addClass(e.currentTarget, "over");
	    	}).onmouseout(function(e) {
	    		hqDojo.removeClass(e.currentTarget, "over")
	    	});
	    });
    </script>
    <div class="ajaxLoading" style="display:none;" id="loading">
        <html:img page="/images/4.0/icons/ajax-loader.gif" border="0" width="16" height="16"/>
    </div>
    <div id="headerAlerts" style="display:none;">
      <div class="headAlertWrapper">
        <div class="recentText">
          <fmt:message key="header.RecentAlerts"/>
        </div>
        <div id="recentAlerts"></div>
      </div>
    </div>
    <div id="headerLinks">
 	 	<c:if test="${not empty HQUpdateReport}">
 	 	<div id="update" class="dialog" style="display: none;">
 	 	<c:out value="${HQUpdateReport}" escapeXml="false"/>
 	 
 	 	<form name="updateForm" action="">
 	 		<div style="text-align:right;">
 	 			<input type="button" class="button42" value="<fmt:message key="header.Acknowledge"/>" onclick="getUpdateStatus(this.value);">
 	 		</div>
 	 	</form>
 	</div>
	<script type="text/javascript">
		hqDojo.require("dijit.dijit");
 	 	hqDojo.require("dijit.Dialog");
 	 		
 	 	var updateDialog = null;
 	 		
 	 	hqDojo.ready(function(){
 	 	updateDialog = new hqDijit.Dialog({
 	 	 	id: 'update_popup',
 	 		refocus: true,
 	 		autofocus: false,
 	 		opacity: 0,
 	 		title: "<fmt:message key="header.dialog.title.update" />"
 			}, hqDojo.byId('update'));
 	 	});
 	</script>
 	<a id="updateLink" href="javascript:updateDialog.show()">
 		<img src="<html:rewrite page="/images/transmit2.gif" />" align="absMiddle" border="0" />                        
 	</a>
	</c:if>	
        <fmt:message key="header.Welcome"/>
         <c:choose>
            <c:when test="${useroperations['viewSubject']}">
                <html:link page="/admin/user/UserAdmin.do?mode=view&u=${sessionScope.webUser.id}">
                    <c:out value="${sessionScope.webUser.firstName}"/>
                </html:link>
            </c:when>
            <c:otherwise>
                <c:out value="${sessionScope.webUser.firstName}"/>
            </c:otherwise>
        </c:choose>
         <span><a href="<html:rewrite page="/j_spring_security_logout" />"><fmt:message key="header.SignOut"/></a></span>
        <span><html:link href="#" onclick="tutorialWin=window.open('http://www.hyperic.com/demo/screencasts.html','tutorials','width=800,height=650,scrollbars=yes,toolbar=yes,left=80,top=80,resizable=yes');tutorialWin.focus();return false;"><fmt:message key="header.Screencasts"/></html:link></span>
        <span><a id="hqHelpLink" href="<hq:help/>" onclick="helpWin=window.open((typeof help != 'undefined' ? help : this.href),'help','width=800,height=650,scrollbars=yes,toolbar=yes,left=80,top=80,resizable=yes');helpWin.focus();return false;"><fmt:message key="header.Help"/></a></span>
    </div>
    <div id="headerSearch">
		<input type="text" id="searchBox" value=""/>
    </div>
	<div id="headerSearchResults" style="display:none">
      	<div id="searchClose" class="cancelButton right"></div>
	        <div class="resultsGroup">
       		    <div class="category"><fmt:message key="header.Resources"/> (<span id="resourceResultsCount"></span>)</div>
	           	<ul id="resourceResults">
           		    <li></li>
		        </ul>
		    </div>
		    <div class="resultsGroup">
           		<div class="category"><fmt:message key="header.users"/> (<span id="usersResultsCount"></span>)</div>
		        <ul id="usersResults">
               		<li></li>
           		</ul>
       		</div>
    	</div>
    </div>
</div>