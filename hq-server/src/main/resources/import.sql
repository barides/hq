DROP TABLE IF EXISTS EAM_MEASUREMENT_DATA_1D;
CREATE TABLE EAM_MEASUREMENT_DATA_1D (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,MINVALUE decimal(24,5) DEFAULT NULL,MAXVALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY MEASUREMENT_DATA_1D_MID_IDX (MEASUREMENT_ID))
DROP TABLE IF EXISTS EAM_MEASUREMENT_DATA_1H;
CREATE TABLE EAM_MEASUREMENT_DATA_1H (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,MINVALUE decimal(24,5) DEFAULT NULL,MAXVALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY MEASUREMENT_DATA_1H_MID_IDX (MEASUREMENT_ID)) 
DROP TABLE IF EXISTS EAM_MEASUREMENT_DATA_6H;
CREATE TABLE EAM_MEASUREMENT_DATA_6H (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,MINVALUE decimal(24,5) DEFAULT NULL,MAXVALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY MEASUREMENT_DATA_6H_MID_IDX (MEASUREMENT_ID))
DROP TABLE IF EXISTS HQ_METRIC_DATA_0D_0S;
CREATE TABLE HQ_METRIC_DATA_0D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_0D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_0D_1S;
CREATE TABLE HQ_METRIC_DATA_0D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_0D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_1D_0S;
CREATE TABLE HQ_METRIC_DATA_1D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_1D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_1D_1S;
CREATE TABLE HQ_METRIC_DATA_1D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_1D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_2D_0S;
CREATE TABLE HQ_METRIC_DATA_2D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_2D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_2D_1S;
CREATE TABLE HQ_METRIC_DATA_2D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_2D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_3D_0S;
CREATE TABLE HQ_METRIC_DATA_3D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_3D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_3D_1S;
CREATE TABLE HQ_METRIC_DATA_3D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_3D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_4D_0S;
CREATE TABLE HQ_METRIC_DATA_4D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_4D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_4D_1S;
CREATE TABLE HQ_METRIC_DATA_4D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_4D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_5D_0S;
CREATE TABLE HQ_METRIC_DATA_5D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_5D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_5D_1S;
CREATE TABLE HQ_METRIC_DATA_5D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_5D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_6D_0S;
CREATE TABLE HQ_METRIC_DATA_6D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_6D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_6D_1S;
CREATE TABLE HQ_METRIC_DATA_6D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_6D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_7D_0S;
CREATE TABLE HQ_METRIC_DATA_7D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_7D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_7D_1S;
CREATE TABLE HQ_METRIC_DATA_7D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_7D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_8D_0S;
CREATE TABLE HQ_METRIC_DATA_8D_0S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_8D_0S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_8D_1S;
CREATE TABLE HQ_METRIC_DATA_8D_1S (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_8D_1S_MID_IDX (MEASUREMENT_ID));
DROP TABLE IF EXISTS HQ_METRIC_DATA_compat;
CREATE TABLE HQ_METRIC_DATA_compat (TIMESTAMP bigint(20) NOT NULL,MEASUREMENT_ID int(11) NOT NULL,VALUE decimal(24,5) DEFAULT NULL,PRIMARY KEY (TIMESTAMP,MEASUREMENT_ID),KEY METRIC_DATA_COMPAT_MID_IDX (MEASUREMENT_ID));
INSERT INTO EAM_AGENT_TYPE (ID,NAME,VERSION_COL) VALUES ('1','covalent-eam',0);
INSERT INTO EAM_AGENT_TYPE (ID,NAME,VERSION_COL) VALUES ('2','hyperic-hq-remoting',0);
INSERT INTO EAM_PRINCIPAL (PASSWORD,PRINCIPAL,id,VERSION_COL) VALUES ('XfLzwfNQujo/CxxaYX3OCg==','hqadmin','1',0);
INSERT INTO EAM_SUBJECT (DEPARTMENT,DSN,FACTIVE,FIRST_NAME,FSYSTEM,HTML_EMAIL,ID,LAST_NAME,NAME,VERSION_COL) VALUES ('Administration','covalentAuthzInternalDsn',1,'System',1,0,'0','User','admin',0);
INSERT INTO EAM_SUBJECT (DSN,EMAIL_ADDRESS,FACTIVE,FIRST_NAME,FSYSTEM,HTML_EMAIL,ID,LAST_NAME,NAME,VERSION_COL) VALUES ('CAM','${server.admin.email}',1,'HQ',1,0,'1','Administrator','hqadmin',0);
INSERT INTO EAM_ROLE (FSYSTEM,ID,NAME,VERSION_COL) VALUES (1,'0','Super User Role',0);
INSERT INTO EAM_SUBJECT_ROLE_MAP (ROLE_ID,SUBJECT_ID) VALUES ('0','1');
INSERT INTO EAM_ROLE (FSYSTEM,ID,NAME,VERSION_COL) VALUES (1,'1','RESOURCE_CREATOR_ROLE',0);
INSERT INTO EAM_SUBJECT_ROLE_MAP (ROLE_ID,SUBJECT_ID) VALUES ('1','1');
INSERT INTO EAM_CRISPO (ID,VERSION_COL) VALUES ('0',0);
INSERT INTO EAM_CRISPO (ID,VERSION_COL) VALUES ('2',0);
INSERT INTO EAM_CRISPO (ID,VERSION_COL) VALUES ('3',0);
INSERT INTO EAM_SUBJECT (DSN,EMAIL_ADDRESS,FACTIVE,FIRST_NAME,FSYSTEM,HTML_EMAIL,ID,LAST_NAME,NAME,PREF_CRISPO_ID,VERSION_COL) VALUES ('CAM','${server.admin.email}',0,'Guest',0,0,'2','User','guest','3',0);
INSERT INTO EAM_CRISPO_OPT (CRISPO_ID,ID,PROPKEY,VAL,VERSION_COL) VALUES ('3','2','.user.dashboard.default.id','2',0);
INSERT INTO EAM_ROLE (FSYSTEM,ID,NAME,VERSION_COL) VALUES (0,'2','Guest Role',0);
INSERT INTO EAM_DASH_CONFIG (CONFIG_TYPE,CRISPO_ID,ID,NAME,ROLE_ID,VERSION_COL) VALUES ('ROLE','0','0','Super User Role','0',0);
INSERT INTO EAM_DASH_CONFIG (CONFIG_TYPE,CRISPO_ID,ID,NAME,ROLE_ID,VERSION_COL) VALUES ('ROLE','2','2','Guest Role','2',0);
INSERT INTO EAM_SUBJECT_ROLE_MAP (ROLE_ID,SUBJECT_ID) VALUES ('2','2');
INSERT INTO EAM_ESCALATION (ALLOW_PAUSE,CTIME,DESCRIPTION,FREPEAT,ID,MAX_WAIT_TIME,MTIME,NAME,NOTIFY_ALL,VERSION_COL) VALUES (0,'0','This is an Escalation Scheme created by HQ that performs no actions',0,'100','300000','0','Default Escalation',0,'0');
INSERT INTO EAM_MEASUREMENT_CAT (ID,NAME,VERSION_COL) VALUES ('1','AVAILABILITY',0);
INSERT INTO EAM_MEASUREMENT_CAT (ID,NAME,VERSION_COL) VALUES ('2','PERFORMANCE',0);
INSERT INTO EAM_MEASUREMENT_CAT (ID,NAME,VERSION_COL) VALUES ('3','THROUGHPUT',0);
INSERT INTO EAM_MEASUREMENT_CAT (ID,NAME,VERSION_COL) VALUES ('4','UTILIZATION',0);
INSERT INTO EAM_NUMBERS (I) VALUES ('0');
INSERT INTO EAM_NUMBERS (I) VALUES ('1');
INSERT INTO EAM_NUMBERS (I) VALUES ('2');
INSERT INTO EAM_NUMBERS (I) VALUES ('3');
INSERT INTO EAM_NUMBERS (I) VALUES ('4');
INSERT INTO EAM_NUMBERS (I) VALUES ('5');
INSERT INTO EAM_NUMBERS (I) VALUES ('6');
INSERT INTO EAM_NUMBERS (I) VALUES ('7');
INSERT INTO EAM_NUMBERS (I) VALUES ('8');
INSERT INTO EAM_NUMBERS (I) VALUES ('9');
INSERT INTO EAM_NUMBERS (I) VALUES ('10');
INSERT INTO EAM_NUMBERS (I) VALUES ('11');
INSERT INTO EAM_NUMBERS (I) VALUES ('12');
INSERT INTO EAM_NUMBERS (I) VALUES ('13');
INSERT INTO EAM_NUMBERS (I) VALUES ('14');
INSERT INTO EAM_NUMBERS (I) VALUES ('15');
INSERT INTO EAM_NUMBERS (I) VALUES ('16');
INSERT INTO EAM_NUMBERS (I) VALUES ('17');
INSERT INTO EAM_NUMBERS (I) VALUES ('18');
INSERT INTO EAM_NUMBERS (I) VALUES ('19');
INSERT INTO EAM_NUMBERS (I) VALUES ('20');
INSERT INTO EAM_NUMBERS (I) VALUES ('21');
INSERT INTO EAM_NUMBERS (I) VALUES ('22');
INSERT INTO EAM_NUMBERS (I) VALUES ('23');
INSERT INTO EAM_NUMBERS (I) VALUES ('24');
INSERT INTO EAM_NUMBERS (I) VALUES ('25');
INSERT INTO EAM_NUMBERS (I) VALUES ('26');
INSERT INTO EAM_NUMBERS (I) VALUES ('27');
INSERT INTO EAM_NUMBERS (I) VALUES ('28');
INSERT INTO EAM_NUMBERS (I) VALUES ('29');
INSERT INTO EAM_NUMBERS (I) VALUES ('30');
INSERT INTO EAM_NUMBERS (I) VALUES ('31');
INSERT INTO EAM_NUMBERS (I) VALUES ('32');
INSERT INTO EAM_NUMBERS (I) VALUES ('33');
INSERT INTO EAM_NUMBERS (I) VALUES ('34');
INSERT INTO EAM_NUMBERS (I) VALUES ('35');
INSERT INTO EAM_NUMBERS (I) VALUES ('36');
INSERT INTO EAM_NUMBERS (I) VALUES ('37');
INSERT INTO EAM_NUMBERS (I) VALUES ('38');
INSERT INTO EAM_NUMBERS (I) VALUES ('39');
INSERT INTO EAM_NUMBERS (I) VALUES ('40');
INSERT INTO EAM_NUMBERS (I) VALUES ('41');
INSERT INTO EAM_NUMBERS (I) VALUES ('42');
INSERT INTO EAM_NUMBERS (I) VALUES ('43');
INSERT INTO EAM_NUMBERS (I) VALUES ('44');
INSERT INTO EAM_NUMBERS (I) VALUES ('45');
INSERT INTO EAM_NUMBERS (I) VALUES ('46');
INSERT INTO EAM_NUMBERS (I) VALUES ('47');
INSERT INTO EAM_NUMBERS (I) VALUES ('48');
INSERT INTO EAM_NUMBERS (I) VALUES ('49');
INSERT INTO EAM_NUMBERS (I) VALUES ('50');
INSERT INTO EAM_NUMBERS (I) VALUES ('51');
INSERT INTO EAM_NUMBERS (I) VALUES ('52');
INSERT INTO EAM_NUMBERS (I) VALUES ('53');
INSERT INTO EAM_NUMBERS (I) VALUES ('54');
INSERT INTO EAM_NUMBERS (I) VALUES ('55');
INSERT INTO EAM_NUMBERS (I) VALUES ('56');
INSERT INTO EAM_NUMBERS (I) VALUES ('57');
INSERT INTO EAM_NUMBERS (I) VALUES ('58');
INSERT INTO EAM_NUMBERS (I) VALUES ('59');
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('REPLACE_ME',1,'1','CAM_SERVER_VERSION','${hq.version}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('REPLACE_ME',1,'2','CAM_SCHEMA_VERSION','@@@CAM_SCHEMA_VERSION@@@',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('JDBC',0,'3','CAM_JAAS_PROVIDER','@@@JAASPROVIDER@@@',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('${server.webapp.baseurl}',0,'4','CAM_BASE_URL','${server.webapp.baseurl}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('${server.mail.host}',0,'7','CAM_SMTP_HOST','${server.mail.host}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('${server.mail.sender}',0,'8','CAM_EMAIL_SENDER','${server.mail.sender}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('web',0,'9','CAM_HELP_USER','web',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('user',0,'10','CAM_HELP_PASSWORD','user',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('com.sun.jndi.ldap.LdapCtxFactory',0,'11','CAM_LDAP_NAMING_FACTORY_INITIAL','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('ldap://localhost/',0,'12','CAM_LDAP_NAMING_PROVIDER_URL','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('cn',0,'13','CAM_LDAP_LOGIN_PROPERTY','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('o=Hyperic,c=US',0,'14','CAM_LDAP_BASE_DN','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'15','CAM_LDAP_BIND_DN','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'16','CAM_LDAP_BIND_PW','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'17','CAM_LDAP_PROTOCOL','@@@LDAPPROTOCOL@@@',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'18','CAM_LDAP_FILTER','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'19','CAM_MULTICAST_ADDRESS','${server.multicast.addr}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'20','CAM_MULTICAST_PORT','${server.multicast.port}',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('false',0,'21','CAM_SYSLOG_ACTIONS_ENABLED','false',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'23','CAM_GUIDE_ENABLED','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'24','CAM_RT_COLLECT_IP_ADDRS','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('172800000',0,'25','CAM_DATA_PURGE_RAW','172800000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('1209600000',0,'26','CAM_DATA_PURGE_1H','1209600000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('2678400000',0,'27','CAM_DATA_PURGE_6H','2678400000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('31536000000',0,'28','CAM_DATA_PURGE_1D','31536000000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('259200000',0,'29','CAM_BASELINE_FREQUENCY','259200000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('604800000',0,'30','CAM_BASELINE_DATASET','604800000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('40',0,'31','CAM_BASELINE_MINSET','40',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('3600000',0,'32','CAM_DATA_MAINTENANCE','3600000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'33','DATA_STORE_ALL','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('2678400000',0,'34','RT_DATA_PURGE','2678400000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'35','DATA_REINDEX_NIGHTLY','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('2678400000',0,'36','ALERT_PURGE','2678400000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'37','SNMP_VERSION','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'38','SNMP_AUTH_PROTOCOL','MD5',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'39','SNMP_AUTH_PASSPHRASE','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'40','SNMP_PRIV_PASSPHRASE','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'41','SNMP_COMMUNITY','public',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'42','SNMP_ENGINE_ID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'43','SNMP_CONTEXT_NAME','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'44','SNMP_SECURITY_NAME','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'45','SNMP_TRAP_OID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'46','SNMP_ENTERPRISE_OID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'47','SNMP_GENERIC_ID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'48','SNMP_SPECIFIC_ID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'49','SNMP_AGENT_ADDRESS','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'50','SNMP_PRIVACY_PROTOCOL','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('2678400000',0,'51','EVENT_LOG_PURGE','2678400000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'52','KERBEROS_REALM','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'53','KERBEROS_KDC','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'54','KERBEROS_DEBUG','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'55','HQ-GUID','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'56','BATCH_AGGREGATE_WORKERS','10',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'57','BATCH_AGGREGATE_BATCHSIZE','1000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'58','BATCH_AGGREGATE_QUEUE','500000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('1000',0,'59','REPORT_STATS_SIZE','1000',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'60','AGENT_BUNDLE_REPOSITORY_DIR','hq-agent-bundles',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'61','ARC_SERVER_URL','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'62','HQ_ALERTS_ENABLED','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'63','HQ_ALERT_NOTIFICATIONS_ENABLED','true',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('0',0,'64','HQ_ALERT_THRESHOLD','0',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('',0,'65','HQ_ALERT_THRESHOLD_EMAILS','',0);
INSERT INTO EAM_CONFIG_PROPS (DEFAULT_PROPVALUE,FREAD_ONLY,ID,PROPKEY,PROPVALUE,VERSION_COL) VALUES ('true',0,'66','HQ_HIERARCHICAL_ALERTING_ENABLED','true',0);
INSERT INTO QRTZ_LOCKS (LOCK_NAME) VALUES ('TRIGGER_ACCESS');
INSERT INTO QRTZ_LOCKS (LOCK_NAME) VALUES ('JOB_ACCESS');
INSERT INTO QRTZ_LOCKS (LOCK_NAME) VALUES ('CALENDAR_ACCESS');
INSERT INTO QRTZ_LOCKS (LOCK_NAME) VALUES ('STATE_ACCESS');
INSERT INTO QRTZ_LOCKS (LOCK_NAME) VALUES ('MISFIRE_ACCESS');
UPDATE EAM_CONFIG_PROPS SET propvalue = 4 WHERE propkey = 'BATCH_AGGREGATE_WORKERS';
UPDATE EAM_CONFIG_PROPS SET propvalue = 2000 WHERE propkey = 'BATCH_AGGREGATE_BATCHSIZE';
UPDATE EAM_CONFIG_PROPS SET propvalue = 4000000 WHERE propkey = 'BATCH_AGGREGATE_QUEUE';
