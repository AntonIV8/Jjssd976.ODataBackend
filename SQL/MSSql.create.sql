



CREATE TABLE [contragent] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [descr] varchar(max)  NULL,

	 [official_name] VARCHAR(255)  NULL,

	 [creator_id] INT  NULL,

	 [modifier_id] INT  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [INN] varchar(32)  NULL,

	 [guid1c] uniqueidentifier  NULL,

	 [archive] BIT  NULL,

	 [dt_archive] DATETIME  NULL,

	 [archiver_id] INT  NULL,

	 [archive_reason_id] INT  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_service_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NULL,

	 [dt_action] DATETIME  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceUsageSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NOT NULL,

	 [unit] varchar(32)  NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [type_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceSpecAcl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NOT NULL,

	 [a_read] BIT  NOT NULL,

	 [a_update] BIT  NOT NULL,

	 [a_delete] BIT  NOT NULL,

	 [group_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_service_order] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NULL,

	 [dt_action] DATETIME  NULL,

	 [user_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [service_order_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_characteristic_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_characteristic_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id] INT  NULL,

	 [start_time] DATETIME  NULL,

	 [end_time] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceState] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [version] INT  NULL,

	 [enum] varchar(32)  NULL,

	 [category] varchar(3)  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [catalog_key_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [customer] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] varchar(128)  NOT NULL,

	 [descr] varchar(max)  NULL,

	 [service_manager_id] INT  NULL,

	 [creator_id] INT  NULL,

	 [modifier_id] INT  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [archive] BIT  NOT NULL,

	 [dt_archive] DATETIME  NULL,

	 [archiver_id] INT  NULL,

	 [archive_reason_id] INT  NULL,

	 [internal] BIT  NOT NULL,

	 [telco] BIT  NOT NULL,

	 [office] BIT  NOT NULL,

	 [barrier] BIT  NOT NULL,

	 [pci_dss] BIT  NULL,

	 [federal_low_152] BIT  NULL,

	 [account_manager_id] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_started] DATETIME  NULL,

	 [dt_ended] DATETIME  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [state_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [cfs_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceCharacteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dictionaryValue] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [userResourceSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_group] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [grp] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 [imported] BIT  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_order] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_completed] DATETIME  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [dt_started] DATETIME  NULL,

	 [external_id] uniqueidentifier  NULL,

	 [price] money  NULL,

	 [creator_id_m0] UNIQUEIDENTIFIER  NULL,

	 [contragent_id_m0] UNIQUEIDENTIFIER  NULL,

	 [modifier_id_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [orderItem] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [price] money  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [log] varchar(1024)  NULL,

	 [clone_service_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [modifier_id] UNIQUEIDENTIFIER  NULL,

	 [state_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [creator_id] UNIQUEIDENTIFIER  NULL,

	 [service_order_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [cardinalityType] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [userServiceOrder] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_order_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [catalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [code] varchar(32)  NOT NULL,

	 [svc] varchar(max)  NOT NULL,

	 [svc_type] varchar(32)  NULL,

	 [data_version] varchar(32)  NULL,

	 [dt_sync] DATETIME  NULL,

	 [descr] varchar(max)  NULL,

	 [vat] varchar(31)  NULL,

	 [is_actual] BIT  NOT NULL,

	 [dt_creation] DATETIME  NULL,

	 [parent_key] uniqueidentifier  NULL,

	 [measure] varchar(max)  NULL,

	 [measure_key] uniqueidentifier  NULL,

	 [status] varchar(10)  NULL,

	 [formula_key] uniqueidentifier  NULL,

	 [billing_object_type_guid] uniqueidentifier  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_role] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [role_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_common] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NULL,

	 [type] varchar(32)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [type_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [characteristicType] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [regex] VARCHAR(255)  NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceUsageSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NOT NULL,

	 [unit] varchar(32)  NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceShared] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [existent] BIT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [enum] varchar(32)  NULL,

	 [type] varchar(32)  NULL,

	 [existent] BIT  NULL,

	 [shared] BIT  NULL,

	 [version] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [parent_id_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [productCatalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [spec_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [version] INT  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceSpecCharacteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NOT NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_usage_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NULL,

	 [unit] varchar(32)  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dictionary_value] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [order_state] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_resource_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NULL,

	 [dt_action] DATETIME  NULL,

	 [resource_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [order_item] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NULL,

	 [price] money  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [log] varchar(1024)  NULL,

	 [service_order_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id_m0] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dictionary] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [version] INT  NOT NULL,

	 [enum] varchar(32)  NOT NULL,

	 [category] varchar(3)  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [catalog_key] UNIQUEIDENTIFIER  NULL,

	 [parent_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [cardinality] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceCharacteristicLog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_characteristic_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [service_id] INT  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceCharacteristicLog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_characteristic_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id] INT  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [userRole] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [role_id] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [product_catalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [spec_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [version] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec_acl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NULL,

	 [a_read] BIT  NULL,

	 [a_update] BIT  NULL,

	 [a_delete] BIT  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_spec_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [type_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_state] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [enum] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [existent] BIT  NOT NULL,

	 [shared] BIT  NOT NULL,

	 [version] INT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [resource_common_id] UNIQUEIDENTIFIER  NULL,

	 [cardinality] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [parent_service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [userGroup] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dba] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [dt_upgrade] DATETIME  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 [script] VARCHAR(255)  NOT NULL,

	 [prev_version] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [customerAcl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NOT NULL,

	 [a_read] BIT  NOT NULL,

	 [a_update] BIT  NOT NULL,

	 [a_delete] BIT  NOT NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [characteristic_type] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [regex] VARCHAR(255)  NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceCharacteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [service_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [customer_acl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NULL,

	 [a_read] BIT  NULL,

	 [a_update] BIT  NULL,

	 [a_delete] BIT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_usage_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NULL,

	 [unit] varchar(32)  NULL,

	 [resource_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceLog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id] INT  NOT NULL,

	 [cfs_id] INT  NULL,

	 [parent_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [service_spec_id] INT  NULL,

	 [state] varchar(32)  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_started] DATETIME  NULL,

	 [dt_ended] DATETIME  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_id] INT  NULL,

	 [parent_id] INT  NULL,

	 [cfs_id] INT  NULL,

	 [parent_service_id] INT  NULL,

	 [resource_shared_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [resource_spec_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [external_id] varchar(128)  NULL,

	 [start_time] DATETIME  NULL,

	 [end_time] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [cardinality_type] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_characteristic_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_characteristic_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [service_id] INT  NULL,

	 [start_time] DATETIME  NULL,

	 [end_time] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [usr] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [login] VARCHAR(255)  NOT NULL,

	 [password] varbinary(255)  NULL,

	 [locked] BIT  NOT NULL,

	 [email] VARCHAR(255)  NOT NULL,

	 [domain] VARCHAR(255)  NULL,

	 [last_name] VARCHAR(255)  NOT NULL,

	 [first_name] VARCHAR(255)  NULL,

	 [middle_name] VARCHAR(255)  NULL,

	 [phone] varchar(32)  NULL,

	 [phone_work] varchar(32)  NULL,

	 [phone_mobile] varchar(32)  NULL,

	 [position] VARCHAR(255)  NULL,

	 [department] VARCHAR(255)  NULL,

	 [photo] varchar(max)  NULL,

	 [thumbnail] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_locked] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [dt_lastlogin] DATETIME  NULL,

	 [full_name] varchar(767)  NULL,

	 [short_name] varchar(261)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_shared] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [existent] BIT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NULL,

	 [type] varchar(32)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [customer_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [external_id] varchar(128)  NULL,

	 [parent_service_id] UNIQUEIDENTIFIER  NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [cfs_id] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [resource_shared_id] UNIQUEIDENTIFIER  NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [role] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] varchar(32)  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceLog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_id] INT  NOT NULL,

	 [parent_id] INT  NULL,

	 [cfs_id] INT  NULL,

	 [parent_service_id] INT  NULL,

	 [resource_shared_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [resource_spec_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [external_id] varchar(128)  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [orderState] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceSpecCharacteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NOT NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id] INT  NULL,

	 [cfs_id] INT  NULL,

	 [parent_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [service_spec_id] INT  NULL,

	 [state] varchar(32)  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_started] DATETIME  NULL,

	 [dt_ended] DATETIME  NULL,

	 [start_time] DATETIME  NULL,

	 [end_time] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resourceCommon] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [serviceOrder] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_completed] DATETIME  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [dt_started] DATETIME  NULL,

	 [external_id] uniqueidentifier  NULL,

	 [price] money  NOT NULL,

	 [creator_id] UNIQUEIDENTIFIER  NULL,

	 [modifier_id] UNIQUEIDENTIFIER  NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [state] UNIQUEIDENTIFIER  NOT NULL,

	 [customer_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [userServiceSpec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [contragent] ADD CONSTRAINT [contragent_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX contragent_Icustomer_id on [contragent] ([customer_id])

 ALTER TABLE [user_service_spec] ADD CONSTRAINT [user_service_spec_Fservice_spec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX user_service_spec_Iservice_spec_id_m0 on [user_service_spec] ([service_spec_id_m0])

 ALTER TABLE [user_service_spec] ADD CONSTRAINT [user_service_spec_Fusr_0] FOREIGN KEY ([user_id_m0]) REFERENCES [usr]
CREATE INDEX user_service_spec_Iuser_id_m0 on [user_service_spec] ([user_id_m0])

 ALTER TABLE [resourceUsageSpec] ADD CONSTRAINT [resourceUsageSpec_FresourceSpec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resourceSpec]
CREATE INDEX resourceUsageSpec_Iresource_spec_id on [resourceUsageSpec] ([resource_spec_id])

 ALTER TABLE [resourceUsageSpec] ADD CONSTRAINT [resourceUsageSpec_FcharacteristicType_0] FOREIGN KEY ([type_m0]) REFERENCES [characteristicType]
CREATE INDEX resourceUsageSpec_Itype_m0 on [resourceUsageSpec] ([type_m0])

 ALTER TABLE [serviceSpecAcl] ADD CONSTRAINT [serviceSpecAcl_Fgrp_0] FOREIGN KEY ([group_id]) REFERENCES [grp]
CREATE INDEX serviceSpecAcl_Igroup_id on [serviceSpecAcl] ([group_id])

 ALTER TABLE [serviceSpecAcl] ADD CONSTRAINT [serviceSpecAcl_FserviceSpec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [serviceSpec]
CREATE INDEX serviceSpecAcl_Iservice_spec_id on [serviceSpecAcl] ([service_spec_id])

 ALTER TABLE [user_service_order] ADD CONSTRAINT [user_service_order_Fusr_0] FOREIGN KEY ([user_id_m0]) REFERENCES [usr]
CREATE INDEX user_service_order_Iuser_id_m0 on [user_service_order] ([user_id_m0])

 ALTER TABLE [user_service_order] ADD CONSTRAINT [user_service_order_Fservice_order_0] FOREIGN KEY ([service_order_id_m0]) REFERENCES [service_order]
CREATE INDEX user_service_order_Iservice_order_id_m0 on [user_service_order] ([service_order_id_m0])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fcatalog_0] FOREIGN KEY ([catalog_key_m0]) REFERENCES [catalog]
CREATE INDEX service_spec_Icatalog_key_m0 on [service_spec] ([catalog_key_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_spec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX service_Iservice_spec_id_m0 on [service] ([service_spec_id_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX service_Icontragent_id on [service] ([contragent_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_FserviceState_0] FOREIGN KEY ([state_m0]) REFERENCES [serviceState]
CREATE INDEX service_Istate_m0 on [service] ([state_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_FserviceSpec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [serviceSpec]
CREATE INDEX service_Iservice_spec_id on [service] ([service_spec_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_0] FOREIGN KEY ([cfs_id_m0]) REFERENCES [service]
CREATE INDEX service_Icfs_id_m0 on [service] ([cfs_id_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_1] FOREIGN KEY ([parent_id]) REFERENCES [service]
CREATE INDEX service_Iparent_id on [service] ([parent_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX service_Icustomer_id on [service] ([customer_id])

 ALTER TABLE [resourceCharacteristic] ADD CONSTRAINT [resourceCharacteristic_Fresource_0] FOREIGN KEY ([resource_id]) REFERENCES [resource]
CREATE INDEX resourceCharacteristic_Iresource_id on [resourceCharacteristic] ([resource_id])

 ALTER TABLE [dictionaryValue] ADD CONSTRAINT [dictionaryValue_Fdictionary_0] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX dictionaryValue_Idictionary_id on [dictionaryValue] ([dictionary_id])

 ALTER TABLE [userResourceSpec] ADD CONSTRAINT [userResourceSpec_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX userResourceSpec_Iuser_id on [userResourceSpec] ([user_id])

 ALTER TABLE [userResourceSpec] ADD CONSTRAINT [userResourceSpec_FresourceSpec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resourceSpec]
CREATE INDEX userResourceSpec_Iresource_spec_id on [userResourceSpec] ([resource_spec_id])

 ALTER TABLE [user_group] ADD CONSTRAINT [user_group_Fusr_0] FOREIGN KEY ([user_id_m0]) REFERENCES [usr]
CREATE INDEX user_group_Iuser_id_m0 on [user_group] ([user_id_m0])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fusr_0] FOREIGN KEY ([creator_id_m0]) REFERENCES [usr]
CREATE INDEX service_order_Icreator_id_m0 on [service_order] ([creator_id_m0])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fcontragent_0] FOREIGN KEY ([contragent_id_m0]) REFERENCES [contragent]
CREATE INDEX service_order_Icontragent_id_m0 on [service_order] ([contragent_id_m0])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fusr_1] FOREIGN KEY ([modifier_id_m0]) REFERENCES [usr]
CREATE INDEX service_order_Imodifier_id_m0 on [service_order] ([modifier_id_m0])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_Fservice_0] FOREIGN KEY ([clone_service_id_m0]) REFERENCES [service]
CREATE INDEX orderItem_Iclone_service_id_m0 on [orderItem] ([clone_service_id_m0])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_ForderItem_0] FOREIGN KEY ([parent_id]) REFERENCES [orderItem]
CREATE INDEX orderItem_Iparent_id on [orderItem] ([parent_id])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_Fusr_0] FOREIGN KEY ([modifier_id]) REFERENCES [usr]
CREATE INDEX orderItem_Imodifier_id on [orderItem] ([modifier_id])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_ForderState_0] FOREIGN KEY ([state_m0]) REFERENCES [orderState]
CREATE INDEX orderItem_Istate_m0 on [orderItem] ([state_m0])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_Fusr_1] FOREIGN KEY ([creator_id]) REFERENCES [usr]
CREATE INDEX orderItem_Icreator_id on [orderItem] ([creator_id])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_FserviceOrder_0] FOREIGN KEY ([service_order_id]) REFERENCES [serviceOrder]
CREATE INDEX orderItem_Iservice_order_id on [orderItem] ([service_order_id])

 ALTER TABLE [orderItem] ADD CONSTRAINT [orderItem_Fservice_1] FOREIGN KEY ([service_id_m0]) REFERENCES [service]
CREATE INDEX orderItem_Iservice_id_m0 on [orderItem] ([service_id_m0])

 ALTER TABLE [userServiceOrder] ADD CONSTRAINT [userServiceOrder_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX userServiceOrder_Iuser_id on [userServiceOrder] ([user_id])

 ALTER TABLE [userServiceOrder] ADD CONSTRAINT [userServiceOrder_FserviceOrder_0] FOREIGN KEY ([service_order_id]) REFERENCES [serviceOrder]
CREATE INDEX userServiceOrder_Iservice_order_id on [userServiceOrder] ([service_order_id])

 ALTER TABLE [user_role] ADD CONSTRAINT [user_role_Fusr_0] FOREIGN KEY ([user_id_m0]) REFERENCES [usr]
CREATE INDEX user_role_Iuser_id_m0 on [user_role] ([user_id_m0])

 ALTER TABLE [user_role] ADD CONSTRAINT [user_role_Frole_0] FOREIGN KEY ([role_id_m0]) REFERENCES [role]
CREATE INDEX user_role_Irole_id_m0 on [user_role] ([role_id_m0])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fcharacteristic_type_0] FOREIGN KEY ([type_m0]) REFERENCES [characteristic_type]
CREATE INDEX service_spec_characteristic_Itype_m0 on [service_spec_characteristic] ([type_m0])

 ALTER TABLE [serviceUsageSpec] ADD CONSTRAINT [serviceUsageSpec_FcharacteristicType_0] FOREIGN KEY ([type]) REFERENCES [characteristicType]
CREATE INDEX serviceUsageSpec_Itype on [serviceUsageSpec] ([type])

 ALTER TABLE [serviceUsageSpec] ADD CONSTRAINT [serviceUsageSpec_FserviceSpec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [serviceSpec]
CREATE INDEX serviceUsageSpec_Iservice_spec_id on [serviceUsageSpec] ([service_spec_id])

 ALTER TABLE [resourceShared] ADD CONSTRAINT [resourceShared_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX resourceShared_Icustomer_id on [resourceShared] ([customer_id])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fresource_spec_0] FOREIGN KEY ([parent_id_m0]) REFERENCES [resource_spec]
CREATE INDEX resource_spec_Iparent_id_m0 on [resource_spec] ([parent_id_m0])

 ALTER TABLE [serviceSpecCharacteristic] ADD CONSTRAINT [serviceSpecCharacteristic_FserviceSpec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [serviceSpec]
CREATE INDEX serviceSpecCharacteristic_Iservice_spec_id_m0 on [serviceSpecCharacteristic] ([service_spec_id_m0])

 ALTER TABLE [serviceSpecCharacteristic] ADD CONSTRAINT [serviceSpecCharacteristic_FcharacteristicType_0] FOREIGN KEY ([type]) REFERENCES [characteristicType]
CREATE INDEX serviceSpecCharacteristic_Itype on [serviceSpecCharacteristic] ([type])

 ALTER TABLE [serviceSpecCharacteristic] ADD CONSTRAINT [serviceSpecCharacteristic_Fdictionary_0] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX serviceSpecCharacteristic_Idictionary_id on [serviceSpecCharacteristic] ([dictionary_id])

 ALTER TABLE [service_usage_spec] ADD CONSTRAINT [service_usage_spec_Fservice_spec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX service_usage_spec_Iservice_spec_id_m0 on [service_usage_spec] ([service_spec_id_m0])

 ALTER TABLE [user_resource_spec] ADD CONSTRAINT [user_resource_spec_Fresource_spec_0] FOREIGN KEY ([resource_spec_id_m0]) REFERENCES [resource_spec]
CREATE INDEX user_resource_spec_Iresource_spec_id_m0 on [user_resource_spec] ([resource_spec_id_m0])

 ALTER TABLE [user_resource_spec] ADD CONSTRAINT [user_resource_spec_Fusr_0] FOREIGN KEY ([user_id_m0]) REFERENCES [usr]
CREATE INDEX user_resource_spec_Iuser_id_m0 on [user_resource_spec] ([user_id_m0])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_order_0] FOREIGN KEY ([service_order_id_m0]) REFERENCES [service_order]
CREATE INDEX order_item_Iservice_order_id_m0 on [order_item] ([service_order_id_m0])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Forder_item_0] FOREIGN KEY ([parent_id_m0]) REFERENCES [order_item]
CREATE INDEX order_item_Iparent_id_m0 on [order_item] ([parent_id_m0])

 ALTER TABLE [serviceSpec] ADD CONSTRAINT [serviceSpec_Fcatalog_0] FOREIGN KEY ([catalog_key]) REFERENCES [catalog]
CREATE INDEX serviceSpec_Icatalog_key on [serviceSpec] ([catalog_key])

 ALTER TABLE [serviceSpec] ADD CONSTRAINT [serviceSpec_FserviceSpec_0] FOREIGN KEY ([parent_id_m0]) REFERENCES [serviceSpec]
CREATE INDEX serviceSpec_Iparent_id_m0 on [serviceSpec] ([parent_id_m0])

 ALTER TABLE [serviceSpec] ADD CONSTRAINT [serviceSpec_FcardinalityType_0] FOREIGN KEY ([cardinality]) REFERENCES [cardinalityType]
CREATE INDEX serviceSpec_Icardinality on [serviceSpec] ([cardinality])

 ALTER TABLE [userRole] ADD CONSTRAINT [userRole_Frole_0] FOREIGN KEY ([role_id]) REFERENCES [role]
CREATE INDEX userRole_Irole_id on [userRole] ([role_id])

 ALTER TABLE [userRole] ADD CONSTRAINT [userRole_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX userRole_Iuser_id on [userRole] ([user_id])

 ALTER TABLE [service_spec_acl] ADD CONSTRAINT [service_spec_acl_Fservice_spec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX service_spec_acl_Iservice_spec_id_m0 on [service_spec_acl] ([service_spec_id_m0])

 ALTER TABLE [service_spec_acl] ADD CONSTRAINT [service_spec_acl_Fgrp_0] FOREIGN KEY ([group_id_m0]) REFERENCES [grp]
CREATE INDEX service_spec_acl_Igroup_id_m0 on [service_spec_acl] ([group_id_m0])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fcharacteristic_type_0] FOREIGN KEY ([type_m0]) REFERENCES [characteristic_type]
CREATE INDEX resource_spec_characteristic_Itype_m0 on [resource_spec_characteristic] ([type_m0])

 ALTER TABLE [resourceSpec] ADD CONSTRAINT [resourceSpec_FresourceCommon_0] FOREIGN KEY ([resource_common_id]) REFERENCES [resourceCommon]
CREATE INDEX resourceSpec_Iresource_common_id on [resourceSpec] ([resource_common_id])

 ALTER TABLE [resourceSpec] ADD CONSTRAINT [resourceSpec_FcardinalityType_0] FOREIGN KEY ([cardinality]) REFERENCES [cardinalityType]
CREATE INDEX resourceSpec_Icardinality on [resourceSpec] ([cardinality])

 ALTER TABLE [resourceSpec] ADD CONSTRAINT [resourceSpec_FresourceSpec_0] FOREIGN KEY ([parent_id]) REFERENCES [resourceSpec]
CREATE INDEX resourceSpec_Iparent_id on [resourceSpec] ([parent_id])

 ALTER TABLE [resourceSpec] ADD CONSTRAINT [resourceSpec_FserviceSpec_0] FOREIGN KEY ([parent_service_spec_id_m0]) REFERENCES [serviceSpec]
CREATE INDEX resourceSpec_Iparent_service_spec_id_m0 on [resourceSpec] ([parent_service_spec_id_m0])

 ALTER TABLE [userGroup] ADD CONSTRAINT [userGroup_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX userGroup_Iuser_id on [userGroup] ([user_id])

 ALTER TABLE [userGroup] ADD CONSTRAINT [userGroup_Fgrp_0] FOREIGN KEY ([group_id]) REFERENCES [grp]
CREATE INDEX userGroup_Igroup_id on [userGroup] ([group_id])

 ALTER TABLE [dba] ADD CONSTRAINT [dba_Fdba_0] FOREIGN KEY ([prev_version]) REFERENCES [dba]
CREATE INDEX dba_Iprev_version on [dba] ([prev_version])

 ALTER TABLE [resource_characteristic] ADD CONSTRAINT [resource_characteristic_Fresource_0] FOREIGN KEY ([resource_id_m0]) REFERENCES [resource]
CREATE INDEX resource_characteristic_Iresource_id_m0 on [resource_characteristic] ([resource_id_m0])

 ALTER TABLE [customerAcl] ADD CONSTRAINT [customerAcl_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX customerAcl_Icustomer_id on [customerAcl] ([customer_id])

 ALTER TABLE [customerAcl] ADD CONSTRAINT [customerAcl_Fgrp_0] FOREIGN KEY ([group_id_m0]) REFERENCES [grp]
CREATE INDEX customerAcl_Igroup_id_m0 on [customerAcl] ([group_id_m0])

 ALTER TABLE [serviceCharacteristic] ADD CONSTRAINT [serviceCharacteristic_Fservice_0] FOREIGN KEY ([service_id]) REFERENCES [service]
CREATE INDEX serviceCharacteristic_Iservice_id on [serviceCharacteristic] ([service_id])

 ALTER TABLE [resource_usage_spec] ADD CONSTRAINT [resource_usage_spec_Fresource_spec_0] FOREIGN KEY ([resource_spec_id_m0]) REFERENCES [resource_spec]
CREATE INDEX resource_usage_spec_Iresource_spec_id_m0 on [resource_usage_spec] ([resource_spec_id_m0])

 ALTER TABLE [resource_shared] ADD CONSTRAINT [resource_shared_Fcustomer_0] FOREIGN KEY ([customer_id_m0]) REFERENCES [customer]
CREATE INDEX resource_shared_Icustomer_id_m0 on [resource_shared] ([customer_id_m0])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fservice_0] FOREIGN KEY ([parent_service_id]) REFERENCES [service]
CREATE INDEX resource_Iparent_service_id on [resource] ([parent_service_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_FresourceSpec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resourceSpec]
CREATE INDEX resource_Iresource_spec_id on [resource] ([resource_spec_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fservice_1] FOREIGN KEY ([cfs_id]) REFERENCES [service]
CREATE INDEX resource_Icfs_id on [resource] ([cfs_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX resource_Icontragent_id on [resource] ([contragent_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_FresourceShared_0] FOREIGN KEY ([resource_shared_id]) REFERENCES [resourceShared]
CREATE INDEX resource_Iresource_shared_id on [resource] ([resource_shared_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_0] FOREIGN KEY ([parent_id]) REFERENCES [resource]
CREATE INDEX resource_Iparent_id on [resource] ([parent_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX resource_Icustomer_id on [resource] ([customer_id])

 ALTER TABLE [resourceSpecCharacteristic] ADD CONSTRAINT [resourceSpecCharacteristic_FcharacteristicType_0] FOREIGN KEY ([type]) REFERENCES [characteristicType]
CREATE INDEX resourceSpecCharacteristic_Itype on [resourceSpecCharacteristic] ([type])

 ALTER TABLE [resourceSpecCharacteristic] ADD CONSTRAINT [resourceSpecCharacteristic_FresourceSpec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resourceSpec]
CREATE INDEX resourceSpecCharacteristic_Iresource_spec_id on [resourceSpecCharacteristic] ([resource_spec_id])

 ALTER TABLE [resourceSpecCharacteristic] ADD CONSTRAINT [resourceSpecCharacteristic_Fdictionary_0] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX resourceSpecCharacteristic_Idictionary_id on [resourceSpecCharacteristic] ([dictionary_id])

 ALTER TABLE [serviceOrder] ADD CONSTRAINT [serviceOrder_Fusr_0] FOREIGN KEY ([creator_id]) REFERENCES [usr]
CREATE INDEX serviceOrder_Icreator_id on [serviceOrder] ([creator_id])

 ALTER TABLE [serviceOrder] ADD CONSTRAINT [serviceOrder_Fusr_1] FOREIGN KEY ([modifier_id]) REFERENCES [usr]
CREATE INDEX serviceOrder_Imodifier_id on [serviceOrder] ([modifier_id])

 ALTER TABLE [serviceOrder] ADD CONSTRAINT [serviceOrder_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX serviceOrder_Icontragent_id on [serviceOrder] ([contragent_id])

 ALTER TABLE [serviceOrder] ADD CONSTRAINT [serviceOrder_ForderState_0] FOREIGN KEY ([state]) REFERENCES [orderState]
CREATE INDEX serviceOrder_Istate on [serviceOrder] ([state])

 ALTER TABLE [serviceOrder] ADD CONSTRAINT [serviceOrder_Fcustomer_0] FOREIGN KEY ([customer_id_m0]) REFERENCES [customer]
CREATE INDEX serviceOrder_Icustomer_id_m0 on [serviceOrder] ([customer_id_m0])

 ALTER TABLE [userServiceSpec] ADD CONSTRAINT [userServiceSpec_FserviceSpec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [serviceSpec]
CREATE INDEX userServiceSpec_Iservice_spec_id on [userServiceSpec] ([service_spec_id])

 ALTER TABLE [userServiceSpec] ADD CONSTRAINT [userServiceSpec_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX userServiceSpec_Iuser_id on [userServiceSpec] ([user_id])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

