




CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 descr TEXT NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN TEXT NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_spec (

 primaryKey UUID NOT NULL,

 action TEXT NULL,

 dt_action TIMESTAMP(3) NULL,

 service_spec_id_m0 UUID NOT NULL,

 user_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceUsageSpec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 resource_spec_id UUID NOT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpecAcl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_order (

 primaryKey UUID NOT NULL,

 action TEXT NULL,

 dt_action TIMESTAMP(3) NULL,

 user_id_m0 UUID NOT NULL,

 service_order_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceState (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec (

 primaryKey UUID NOT NULL,

 version INT NULL,

 enum TEXT NULL,

 category TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 catalog_key_m0 UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 descr TEXT NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 service_spec_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 state_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 cfs_id_m0 UUID NOT NULL,

 parent_id UUID NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionaryValue (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 dictionary_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userResourceSpec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_group (

 primaryKey UUID NOT NULL,

 user_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NULL,

 creator_id_m0 UUID NULL,

 contragent_id_m0 UUID NULL,

 modifier_id_m0 UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE orderItem (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 price DOUBLE PRECISION NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log TEXT NULL,

 clone_service_id_m0 UUID NOT NULL,

 parent_id UUID NULL,

 modifier_id UUID NULL,

 state_m0 UUID NOT NULL,

 creator_id UUID NULL,

 service_order_id UUID NOT NULL,

 service_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinalityType (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userServiceOrder (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 service_order_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code TEXT NOT NULL,

 svc TEXT NOT NULL,

 svc_type TEXT NULL,

 data_version TEXT NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr TEXT NULL,

 vat TEXT NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure TEXT NULL,

 measure_key UUID NULL,

 status TEXT NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 user_id_m0 UUID NOT NULL,

 role_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 category TEXT NULL,

 type TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristicType (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceUsageSpec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 type UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceShared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec (

 primaryKey UUID NOT NULL,

 enum TEXT NULL,

 type TEXT NULL,

 existent BOOLEAN NULL,

 shared BOOLEAN NULL,

 version INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 category TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 parent_id_m0 UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE productCatalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpecCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 service_spec_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NULL,

 unit TEXT NULL,

 service_spec_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary_value (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_resource_spec (

 primaryKey UUID NOT NULL,

 action TEXT NULL,

 dt_action TIMESTAMP(3) NULL,

 resource_spec_id_m0 UUID NOT NULL,

 user_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_item (

 primaryKey UUID NOT NULL,

 action TEXT NULL,

 price DOUBLE PRECISION NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 log TEXT NULL,

 service_order_id_m0 UUID NOT NULL,

 parent_id_m0 UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceSpec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum TEXT NOT NULL,

 category TEXT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 catalog_key UUID NULL,

 parent_id_m0 UUID NOT NULL,

 cardinality UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceCharacteristicLog (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCharacteristicLog (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userRole (

 primaryKey UUID NOT NULL,

 role_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 version INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NULL,

 a_read BOOLEAN NULL,

 a_update BOOLEAN NULL,

 a_delete BOOLEAN NULL,

 service_spec_id_m0 UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceSpec (

 primaryKey UUID NOT NULL,

 enum TEXT NOT NULL,

 type TEXT NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 resource_common_id UUID NULL,

 cardinality UUID NOT NULL,

 parent_id UUID NULL,

 parent_service_spec_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userGroup (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 group_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customerAcl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 customer_id UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 service_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NULL,

 a_read BOOLEAN NULL,

 a_update BOOLEAN NULL,

 a_delete BOOLEAN NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NULL,

 unit TEXT NULL,

 resource_spec_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceLog (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password TEXT NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone TEXT NULL,

 phone_work TEXT NULL,

 phone_mobile TEXT NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo TEXT NULL,

 thumbnail TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name TEXT NULL,

 short_name TEXT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 category TEXT NULL,

 type TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 customer_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 parent_service_id UUID NULL,

 resource_spec_id UUID NOT NULL,

 cfs_id UUID NOT NULL,

 contragent_id UUID NULL,

 resource_shared_id UUID NULL,

 parent_id UUID NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceLog (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE orderState (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceSpecCharacteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NULL,

 end_time TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resourceCommon (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE serviceOrder (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NOT NULL,

 creator_id UUID NULL,

 modifier_id UUID NULL,

 contragent_id UUID NULL,

 state UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE userServiceSpec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_spec_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE contragent ADD CONSTRAINT FK4a0ca8cdbbca4d2497923d63bdfdd65a FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK9c8b9cb8c54d481c97068199feddbbb5 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Index71f3fb35d7b6a96da400967b036935f748103836 on user_service_spec (service_spec_id_m0); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK96738ffac61747a3996b69669a9af58c FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Index139d12d2d589ea17180b845eabc63d0d326d1044 on user_service_spec (user_id_m0); 

 ALTER TABLE resourceUsageSpec ADD CONSTRAINT FK79aeda5849204250a7a0e20c71293640 FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Indexfcbbd50ae33dd0e95d5ea07af8e29733cc22f424 on resourceUsageSpec (resource_spec_id); 

 ALTER TABLE resourceUsageSpec ADD CONSTRAINT FKdca3e4cf16874569851be6a79ec6fb9b FOREIGN KEY (type_m0) REFERENCES characteristicType; 
CREATE INDEX Index773cff383c8c1552986e515212a3efbf6ab395c7 on resourceUsageSpec (type_m0); 

 ALTER TABLE serviceSpecAcl ADD CONSTRAINT FKf6e168ab1a7347daa5f56a9d94eba173 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index1ceb5484f40f248de7dc995465d1e93e4cccfa7e on serviceSpecAcl (group_id); 

 ALTER TABLE serviceSpecAcl ADD CONSTRAINT FKbcb968a72988422092f8fbd7e71d9a91 FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Indexda713f6b96425deec50f6ec091045c3821f23ac8 on serviceSpecAcl (service_spec_id); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK4b7b78c620014aa19e767845f94c3127 FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Indexe529eb1aec38c1514de2eb34c4e5130f6b30ef00 on user_service_order (user_id_m0); 

 ALTER TABLE user_service_order ADD CONSTRAINT FKd0d6ec8c5eca48108e29dbacd8ad912a FOREIGN KEY (service_order_id_m0) REFERENCES service_order; 
CREATE INDEX Index3fb5fac0e555e911641f5d9e3652c8294084e8f1 on user_service_order (service_order_id_m0); 

 ALTER TABLE service_spec ADD CONSTRAINT FK22a730d0c7034596a71ab7690506be68 FOREIGN KEY (catalog_key_m0) REFERENCES catalog; 
CREATE INDEX Indexb0cb5dec4863d032ec9b4d6cdbd95988965ecea7 on service_spec (catalog_key_m0); 

 ALTER TABLE service ADD CONSTRAINT FK6b70c52442234aae99dff3fad2358a27 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexc90c0b4bbb00bb7878bdf6f91eee0b891726f55c on service (service_spec_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FKe6a4874b2d0b43449419dd30f18c0b68 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index93973badbc81c53e84e78a3e51f903275c68dd3c on service (contragent_id); 

 ALTER TABLE service ADD CONSTRAINT FK5a1e170deeb64241a3301b33908c3463 FOREIGN KEY (state_m0) REFERENCES serviceState; 
CREATE INDEX Index4c80a1eb3b94ff6b898fcc2dd113428a141171cd on service (state_m0); 

 ALTER TABLE service ADD CONSTRAINT FK06280e9a77ba4f868f813ce083667cbd FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK438e568b77674586b3bec9029075d4b8 FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexf3616b96a18ccaaa36a8ca2ff725a5898447788e on service (cfs_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FKcec0f37b6822438399d7a59aca969c49 FOREIGN KEY (parent_id) REFERENCES service; 
CREATE INDEX Index7e210cc50475ddd7203177913939fc227b3878d3 on service (parent_id); 

 ALTER TABLE service ADD CONSTRAINT FKcdddd02becc640079add0dd556059eb9 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE resourceCharacteristic ADD CONSTRAINT FK0330e5a70ec444a9b6e0bfe1f51902a0 FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Index9c1fd59d65fc4fa085f08f448cebc282f690870c on resourceCharacteristic (resource_id); 

 ALTER TABLE dictionaryValue ADD CONSTRAINT FKa6422ffe3a104057aa51345f50a2348e FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexe7c4fe34b5007c50a362c334dc7895e014e9c0f7 on dictionaryValue (dictionary_id); 

 ALTER TABLE userResourceSpec ADD CONSTRAINT FK718d19047c1f4a54a68c0d0eb3a72235 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5f4c1ed2e00a1b62f520496b2c70eb9683bb9435 on userResourceSpec (user_id); 

 ALTER TABLE userResourceSpec ADD CONSTRAINT FK16608369a86144ae90b7c1985c77b76f FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Indexd93919ead73c43ac4af728fe8c02259ae4d418fe on userResourceSpec (resource_spec_id); 

 ALTER TABLE user_group ADD CONSTRAINT FK7b9a86fbdd944eb2b2a6f357f3298aef FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Index691acf91fd9a07aa540d9e891617ec720db7a200 on user_group (user_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FKd619ea9a1cfb4eb5b868a5a4f98cc0e2 FOREIGN KEY (creator_id_m0) REFERENCES usr; 
CREATE INDEX Index336e72e3be19e002515d3ea15ce1f045fb930822 on service_order (creator_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK84e41039d1444617b52d722f40e8ae67 FOREIGN KEY (contragent_id_m0) REFERENCES contragent; 
CREATE INDEX Indexe7dab6de66c365220358551dc78208ad7bbe9f79 on service_order (contragent_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK46f12b2b1a7f4f91b0fd2a6ea58d6fa0 FOREIGN KEY (modifier_id_m0) REFERENCES usr; 
CREATE INDEX Indexb011fc9ac03e28ca0c8b04abb0c83d0675fd0a88 on service_order (modifier_id_m0); 

 ALTER TABLE orderItem ADD CONSTRAINT FKd5ff3d54e8174fba9adcfb409f8e7930 FOREIGN KEY (clone_service_id_m0) REFERENCES service; 
CREATE INDEX Index27dc6c0704b0cad21d80fc0f571e4d41ec1a8281 on orderItem (clone_service_id_m0); 

 ALTER TABLE orderItem ADD CONSTRAINT FKbdb4f083e44a41f0b30f11757920840c FOREIGN KEY (parent_id) REFERENCES orderItem; 
CREATE INDEX Index042a49ed7854a03725351551a71b42b5c1adcd68 on orderItem (parent_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FK8a49e56b99c44b39b47e07cea254fb52 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Indexf8f6e44a2f49e4b037f54c57f115383eca43dbb4 on orderItem (modifier_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FKbb5cc6a1a7d24d47807bafece073a3ac FOREIGN KEY (state_m0) REFERENCES orderState; 
CREATE INDEX Indexc3608b1c3ae088630a4d646b3a88e01eab90fb98 on orderItem (state_m0); 

 ALTER TABLE orderItem ADD CONSTRAINT FK29b5f252b47f45b0b7f250d5cbda611a FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Indexc449006091bda63f9620e1a5778e2753d8c4700a on orderItem (creator_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FKe2ebec4e45484123a7395b8b9fd3e892 FOREIGN KEY (service_order_id) REFERENCES serviceOrder; 
CREATE INDEX Index6fe5903e2d5eecc411a5bd06d47e7484474257e8 on orderItem (service_order_id); 

 ALTER TABLE orderItem ADD CONSTRAINT FK8cfaf733b4e743ceb586ee47e8d703b2 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Indexed148abee527f5f7e6caeda430fe7217c99e68a1 on orderItem (service_id_m0); 

 ALTER TABLE userServiceOrder ADD CONSTRAINT FK7389734bc15b4c708fd02e74583a5572 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Indexddaaa440bcf8ed2a72f83bf4b3bad1394001428e on userServiceOrder (user_id); 

 ALTER TABLE userServiceOrder ADD CONSTRAINT FKb7aafbfd84484a6c90ba0a49023135e7 FOREIGN KEY (service_order_id) REFERENCES serviceOrder; 
CREATE INDEX Index360e3b82cef3e2c199ff69bfce913710892ea670 on userServiceOrder (service_order_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKacf92b99ec8b469ba7cc6d0051dd815f FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Index70ebedd333567dcadc51c0ff37deec919d543abe on user_role (user_id_m0); 

 ALTER TABLE user_role ADD CONSTRAINT FK14f50c7aa0b042a9adb83d43d2679a6f FOREIGN KEY (role_id_m0) REFERENCES role; 
CREATE INDEX Index0f584c0ee45d7950f21b9b74248dcc4ef788b670 on user_role (role_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK286efe62e5fa431087c76f59a8e490a0 FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexaa2a360be57fe3a0a3981982ef05e2bfab7af754 on service_spec_characteristic (type_m0); 

 ALTER TABLE serviceUsageSpec ADD CONSTRAINT FK29b5caef0cb64ba48e655274d10af733 FOREIGN KEY (type) REFERENCES characteristicType; 
CREATE INDEX Index7bb5966b1b1689fa8d04caa6ec694ac25e79584c on serviceUsageSpec (type); 

 ALTER TABLE serviceUsageSpec ADD CONSTRAINT FKebcf584e2d5a4f84b0061d11da6dd74b FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Indexcfaf289587e522a7d1559464104186f657b55898 on serviceUsageSpec (service_spec_id); 

 ALTER TABLE resourceShared ADD CONSTRAINT FK6610800b1e284f37b34ba1a3cf69df35 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index8d079f1d77126e3fc79596f724f5c6fece4af740 on resourceShared (customer_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKdccf726ba4944832a9646177ddeb0c7b FOREIGN KEY (parent_id_m0) REFERENCES resource_spec; 
CREATE INDEX Index156577369d2a9753bd1c60004de3065db8d24d50 on resource_spec (parent_id_m0); 

 ALTER TABLE serviceSpecCharacteristic ADD CONSTRAINT FKc6f5516a020048229671358bb917dcc0 FOREIGN KEY (service_spec_id_m0) REFERENCES serviceSpec; 
CREATE INDEX Indexae5cabdd64534dd0d5bcc048e39da489576cb2ff on serviceSpecCharacteristic (service_spec_id_m0); 

 ALTER TABLE serviceSpecCharacteristic ADD CONSTRAINT FK3698357dd1dc4623831875395d8d9510 FOREIGN KEY (type) REFERENCES characteristicType; 
CREATE INDEX Index6f746b2690d49d90cdb6b36240d8fca2ac8356ce on serviceSpecCharacteristic (type); 

 ALTER TABLE serviceSpecCharacteristic ADD CONSTRAINT FK6352ae64e2ef450abffe98c7a415c308 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index22e807a76dffb35cd82169a19a2a10a086b24afd on serviceSpecCharacteristic (dictionary_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK1a46e93d89bc4b90a1dda7f25ff9fd6a FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Index5f8a4ec8eabb43863acf36cb0ce2e03562742eaf on service_usage_spec (service_spec_id_m0); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK8c7b9eefc9d94ed9bf8a7ce2fe4b683b FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Index090a6e4043a334b99cd581c44b0d64b2eb5232f3 on user_resource_spec (resource_spec_id_m0); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK21fd513db56f49f591f0098de75e4d98 FOREIGN KEY (user_id_m0) REFERENCES usr; 
CREATE INDEX Indexbbd47487e55baa50aaecd95edecb65f9a60c53ee on user_resource_spec (user_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK59ac545ca7d6440c931095b4f7c4a93d FOREIGN KEY (service_order_id_m0) REFERENCES service_order; 
CREATE INDEX Indexfc66ce7f2720fe2878707dd366a34a1193ac4b23 on order_item (service_order_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK9f241075d17143bfbf0bf2aee9bbfbf7 FOREIGN KEY (parent_id_m0) REFERENCES order_item; 
CREATE INDEX Index79beba5bbe2e554c58658fa37570fc4aa3d24721 on order_item (parent_id_m0); 

 ALTER TABLE serviceSpec ADD CONSTRAINT FK815d5a29f4524c1589cd33609d329d78 FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Indexd28cc147b8dacb1e0573c0802cf87b1a758ad237 on serviceSpec (catalog_key); 

 ALTER TABLE serviceSpec ADD CONSTRAINT FK3d1402ff70b34e4896dcbae544a865f2 FOREIGN KEY (parent_id_m0) REFERENCES serviceSpec; 
CREATE INDEX Index26067fce6ee4f6a35c20607d7e679cb2f10a324c on serviceSpec (parent_id_m0); 

 ALTER TABLE serviceSpec ADD CONSTRAINT FK8771c5367b8f4025b143b6910c10cae5 FOREIGN KEY (cardinality) REFERENCES cardinalityType; 
CREATE INDEX Index8ee67d0611b82d1ff69a2f7973e50bbc99127a05 on serviceSpec (cardinality); 

 ALTER TABLE userRole ADD CONSTRAINT FK751f3379831643358e56714e6791d34f FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2b7915036cb40f8c85a0df39275a2627713de435 on userRole (role_id); 

 ALTER TABLE userRole ADD CONSTRAINT FK4b5fbc61b20a402ca1103df6f05b2cc0 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index492c80ed7b4334405a76c95383b32915a2ad8a98 on userRole (user_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKc13ccee954e54b05b3a96f66af92d067 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Index4f670982b7da251a43c6f6309ba501f19e7c76a6 on service_spec_acl (service_spec_id_m0); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FK60de5d392e2e419f96c86d28f2f1c92d FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index8857e90fe6df506eed1fa1fea6912eb9fc4bc2d9 on service_spec_acl (group_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKf65d77c5084b4cedb20afcf9245c5074 FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexa7f8b1b010e60f7cc53a2ebf392cceb916fae806 on resource_spec_characteristic (type_m0); 

 ALTER TABLE resourceSpec ADD CONSTRAINT FK2e5bf8b2cf7749c1a2f56e5ea4f0c0ff FOREIGN KEY (resource_common_id) REFERENCES resourceCommon; 
CREATE INDEX Indexd2f4884904b6ebe4f79676f7fb13fa30c0da9569 on resourceSpec (resource_common_id); 

 ALTER TABLE resourceSpec ADD CONSTRAINT FKd474049720294fd191109630d9faca57 FOREIGN KEY (cardinality) REFERENCES cardinalityType; 
CREATE INDEX Indexbad38fd3e07732c15d2eefc115dd69d7140d40ad on resourceSpec (cardinality); 

 ALTER TABLE resourceSpec ADD CONSTRAINT FK9e9f9b5e7788488ea8f4fef38e828eae FOREIGN KEY (parent_id) REFERENCES resourceSpec; 
CREATE INDEX Index706e80e85d920b3c3dbf2216f07f566a216b3a11 on resourceSpec (parent_id); 

 ALTER TABLE resourceSpec ADD CONSTRAINT FK6c478ec8bc444a1b88bc48dce642bbea FOREIGN KEY (parent_service_spec_id_m0) REFERENCES serviceSpec; 
CREATE INDEX Index7c0b10560bd57ebaa1edd21d62ce94ac303ec804 on resourceSpec (parent_service_spec_id_m0); 

 ALTER TABLE userGroup ADD CONSTRAINT FK437c06b2080b42099750e4f9dd6671ea FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Indexb88c4e55d82e726e91be1f1dccd7988277a4068b on userGroup (user_id); 

 ALTER TABLE userGroup ADD CONSTRAINT FK3ce39bb1fb074e8ba264fb890dbe2ab8 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index1e9fee872e4315b5d8fd276d038002d0ceda2e35 on userGroup (group_id); 

 ALTER TABLE dba ADD CONSTRAINT FK4e1760ccf9fe47ada32cf92f292fdd08 FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FKd75c0b5fe9ff43509e8f44f0a56fae9e FOREIGN KEY (resource_id_m0) REFERENCES resource; 
CREATE INDEX Indexff80fd380b31a44017eb7fcb5ae3c319d4f2187a on resource_characteristic (resource_id_m0); 

 ALTER TABLE customerAcl ADD CONSTRAINT FKe3a48ff9bbee4ad5b7db61923bf5be4b FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index2b5911210490651c9c2348610cc779e5f298453f on customerAcl (customer_id); 

 ALTER TABLE customerAcl ADD CONSTRAINT FK6ef5fb8f3612432d83626cceb967a860 FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Indexff7f7f8abc2163776e35b63651a4ee72d542fb1d on customerAcl (group_id_m0); 

 ALTER TABLE serviceCharacteristic ADD CONSTRAINT FK0a4d23412fe14f16a90c76152929eb47 FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index78ecec407f655e50a13cabdd8af0a10317cbe32b on serviceCharacteristic (service_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK16996fe5ecba4bd4b4a15f5969782381 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Indexf6a7351660d61a1ed7048233e4ec182605e3255b on resource_usage_spec (resource_spec_id_m0); 

 ALTER TABLE resource_shared ADD CONSTRAINT FK40d71812fb844dc79bddb906e3d334ac FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index9c3b5c1cc1cf0aa574e0905eafc47ca971e2973f on resource_shared (customer_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKdaec1b1d2a774c3c86b6ab36688e581d FOREIGN KEY (parent_service_id) REFERENCES service; 
CREATE INDEX Indexae380a8db103c708de00ddaef4744b9186f3eb6f on resource (parent_service_id); 

 ALTER TABLE resource ADD CONSTRAINT FK7818f7e984314d0b95c9448fbfd175e2 FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Index95907b0d62b8ee280cc466864699b6600f19f2cb on resource (resource_spec_id); 

 ALTER TABLE resource ADD CONSTRAINT FK33079c49b0274806aefc253a832c0309 FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Index8a5a2131e7cd384587ead99931b3c9b718a72a86 on resource (cfs_id); 

 ALTER TABLE resource ADD CONSTRAINT FKcc494c4fe5a4460e876239867c7ee11a FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK8e911f6689a34a59b61c6973accd4179 FOREIGN KEY (resource_shared_id) REFERENCES resourceShared; 
CREATE INDEX Index69f9b4538aa9c0941f8da44e85fce3cc8df76657 on resource (resource_shared_id); 

 ALTER TABLE resource ADD CONSTRAINT FK2fb2b9db6c7c4ad1b70941181a326a3b FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK9667939c89804cc89854940b786f0ebf FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE resourceSpecCharacteristic ADD CONSTRAINT FK9dc85a4b30364d58891a42a80e87b1c4 FOREIGN KEY (type) REFERENCES characteristicType; 
CREATE INDEX Index064fce63aa42a22401edb75c9a37e991274f88b7 on resourceSpecCharacteristic (type); 

 ALTER TABLE resourceSpecCharacteristic ADD CONSTRAINT FKe242378985644a5c80f2158d7249c32d FOREIGN KEY (resource_spec_id) REFERENCES resourceSpec; 
CREATE INDEX Index75ccb0433242b0a1a1c9b1d91676529c3433757e on resourceSpecCharacteristic (resource_spec_id); 

 ALTER TABLE resourceSpecCharacteristic ADD CONSTRAINT FK2960e275bf02444fa90612ee5491062c FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index3dfc285e10320499dc73a847e08901d1bdf3291b on resourceSpecCharacteristic (dictionary_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FK8d1a49a147374749bf8a83e4f60e824c FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index4c4ed74859cb4d6bd1da25027ea0ad1263b239ba on serviceOrder (creator_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FKb0840cb1e8084746a8d77c92d3245c31 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index6fa4b80ff6ebc8a2e2d66814f7665196a34b2d46 on serviceOrder (modifier_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FKc0397aeaaf3049cf9f9c573676a2b6bf FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index2e7cd913f7674c263e3c6bb1f7be0f2d1f26fe8e on serviceOrder (contragent_id); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FKf6ad433b71fa4aa8aadee540da833b37 FOREIGN KEY (state) REFERENCES orderState; 
CREATE INDEX Indexab19647875de3da7c4d47c50226b80a1e45b6876 on serviceOrder (state); 

 ALTER TABLE serviceOrder ADD CONSTRAINT FKbe99a5856bb34926a0d6685d4ee87f2d FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index4586490a624efcd7df6921f0e897df75083560c2 on serviceOrder (customer_id_m0); 

 ALTER TABLE userServiceSpec ADD CONSTRAINT FKde6637a6322a4067ba72ee660ae7c5a5 FOREIGN KEY (service_spec_id) REFERENCES serviceSpec; 
CREATE INDEX Index8706df7ae0579631e8292e273ed2226a86ade4bd on userServiceSpec (service_spec_id); 

 ALTER TABLE userServiceSpec ADD CONSTRAINT FKbcb11345d7b24435af34fcf87ba67d04 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5a713f4fbda8e32b0d2942ad8f0a6b76c0632296 on userServiceSpec (user_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKa839d9753d4847dcbe479a3ca3f385ad FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK08e79a0e644240499ac79a161b56d03e FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK5437c3832d314aa7afbaffc4dcdebafb FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

