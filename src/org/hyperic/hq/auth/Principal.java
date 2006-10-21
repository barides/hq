/*
 * NOTE: This copyright does *not* cover user programs that use HQ
 * program services by normal system calls through the application
 * program interfaces provided as part of the Hyperic Plug-in Development
 * Kit or the Hyperic Client Development Kit - this is merely considered
 * normal use of the program, and does *not* fall under the heading of
 * "derived work".
 *
 * Copyright (C) [2004, 2005, 2006], Hyperic, Inc.
 * This file is part of HQ.
 *
 * HQ is free software; you can redistribute it and/or modify
 * it under the terms version 2 of the GNU General Public License as
 * published by the Free Software Foundation. This program is distributed
 * in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
 * USA.
 */

package org.hyperic.hq.auth;

import org.hyperic.hq.auth.shared.PrincipalsPK;
import org.hyperic.hq.auth.shared.PrincipalsValue;
import org.hyperic.hibernate.PersistedObject;

import java.io.Serializable;

/**
 * Pojo for hibernate
 */
public class Principal extends PersistedObject
{
    private String principal;
    private String password;

    public Principal()
    {
    }

    public String getPrincipal()
    {
        return principal;
    }

    public void setPrincipal(String principal)
    {
        this.principal = principal;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    private PrincipalsPK _pkey = new PrincipalsPK();
    /**
     * legacy EJB entity primary key accessor()
     * @return
     * @deprecated
     */
    public PrincipalsPK getPrimaryKey()
    {
        _pkey.setId(getId());
        return _pkey;
    }

    private PrincipalsValue principalsValue = new PrincipalsValue();
    /**
     * legacy EJB DTO pattern (value objects)
     * @deprecated
     * @return
     */
    public PrincipalsValue getPrincipalsValue()
    {
        principalsValue.setId(getId());
        principalsValue.setPrincipal(
            (getPrincipal() == null) ? "" : getPrincipal());
        principalsValue.setPassword(
            (getPassword() == null) ? "" : getPassword());
        return principalsValue;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof Principal) || !super.equals(obj)) {
            return false;
        }
        Principal o = (Principal)obj;
        return
            ((principal==o.getPrincipal()) ||
             (principal!=null && o.getPrincipal()!=null &&
              principal.equals(o.getPrincipal())));
    }

    public int hashCode()
    {
        int result = super.hashCode();

        result = 37*result +(principal != null ? principal.hashCode() : 0);

        return result;
    }
}
