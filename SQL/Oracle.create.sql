



CREATE TABLE "contragent"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"descr" NVARCHAR2(255) NULL,

	"official_name" NVARCHAR2(255) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"INN" NVARCHAR2(255) NULL,

	"guid1c" RAW(16) NULL,

	"archive" NUMBER(1) NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"customer_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_service_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NULL,

	"dt_action" DATE NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	"user_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceUsageSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"type_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpecAcl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	"group_id" RAW(16) NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_service_order"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NULL,

	"dt_action" DATE NULL,

	"user_id_m0" RAW(16) NOT NULL,

	"service_order_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_characteristic_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" NUMBER(10) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceState"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"version" NUMBER(10) NULL,

	"enum" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"catalog_key_m0" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customer"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"descr" NVARCHAR2(255) NULL,

	"service_manager_id" NUMBER(10) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"archive" NUMBER(1) NOT NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"internal" NUMBER(1) NOT NULL,

	"telco" NUMBER(1) NOT NULL,

	"office" NUMBER(1) NOT NULL,

	"barrier" NUMBER(1) NOT NULL,

	"pci_dss" NUMBER(1) NULL,

	"federal_low_152" NUMBER(1) NULL,

	"account_manager_id" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	"contragent_id" RAW(16) NULL,

	"state_m0" RAW(16) NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"cfs_id_m0" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionaryValue"
(

	"primaryKey" RAW(16) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"dictionary_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userResourceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_group"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "grp"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"imported" NUMBER(1) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_order"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_completed" DATE NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"dt_started" DATE NULL,

	"external_id" RAW(16) NULL,

	"price" FLOAT(126) NULL,

	"creator_id_m0" RAW(16) NULL,

	"contragent_id_m0" RAW(16) NULL,

	"modifier_id_m0" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "orderItem"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"price" FLOAT(126) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"log" NVARCHAR2(255) NULL,

	"clone_service_id_m0" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	"modifier_id" RAW(16) NULL,

	"state_m0" RAW(16) NOT NULL,

	"creator_id" RAW(16) NULL,

	"service_order_id" RAW(16) NOT NULL,

	"service_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "cardinalityType"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userServiceOrder"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"service_order_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"code" NVARCHAR2(255) NOT NULL,

	"svc" NVARCHAR2(255) NOT NULL,

	"svc_type" NVARCHAR2(255) NULL,

	"data_version" NVARCHAR2(255) NULL,

	"dt_sync" DATE NULL,

	"descr" NVARCHAR2(255) NULL,

	"vat" NVARCHAR2(255) NULL,

	"is_actual" NUMBER(1) NOT NULL,

	"dt_creation" DATE NULL,

	"parent_key" RAW(16) NULL,

	"measure" NVARCHAR2(255) NULL,

	"measure_key" RAW(16) NULL,

	"status" NVARCHAR2(255) NULL,

	"formula_key" RAW(16) NULL,

	"billing_object_type_guid" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_role"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id_m0" RAW(16) NOT NULL,

	"role_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_common"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"type" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_spec_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"type_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "characteristicType"
(

	"primaryKey" RAW(16) NOT NULL,

	"regex" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceUsageSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"type" RAW(16) NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceShared"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"enum" NVARCHAR2(255) NULL,

	"type" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NULL,

	"shared" NUMBER(1) NULL,

	"version" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"parent_id_m0" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "productCatalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"spec_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"version" NUMBER(10) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpecCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	"type" RAW(16) NOT NULL,

	"dictionary_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_usage_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NULL,

	"unit" NVARCHAR2(255) NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionary_value"
(

	"primaryKey" RAW(16) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "order_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_resource_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NULL,

	"dt_action" DATE NULL,

	"resource_spec_id_m0" RAW(16) NOT NULL,

	"user_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "order_item"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NULL,

	"price" FLOAT(126) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"log" NVARCHAR2(255) NULL,

	"service_order_id_m0" RAW(16) NOT NULL,

	"parent_id_m0" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionary"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"catalog_key" RAW(16) NULL,

	"parent_id_m0" RAW(16) NOT NULL,

	"cardinality" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceCharacteristicLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCharacteristicLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userRole"
(

	"primaryKey" RAW(16) NOT NULL,

	"role_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "product_catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"version" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_spec_acl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NULL,

	"a_read" NUMBER(1) NULL,

	"a_update" NUMBER(1) NULL,

	"a_delete" NUMBER(1) NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	"group_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_spec_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"type_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"existent" NUMBER(1) NOT NULL,

	"shared" NUMBER(1) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"resource_common_id" RAW(16) NULL,

	"cardinality" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	"parent_service_spec_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userGroup"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"group_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dba"
(

	"primaryKey" RAW(16) NOT NULL,

	"dt_upgrade" DATE NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"script" NVARCHAR2(255) NOT NULL,

	"prev_version" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customerAcl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	"group_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "characteristic_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"regex" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customer_acl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NULL,

	"a_read" NUMBER(1) NULL,

	"a_update" NUMBER(1) NULL,

	"a_delete" NUMBER(1) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_usage_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NULL,

	"unit" NVARCHAR2(255) NULL,

	"resource_spec_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_id" NUMBER(10) NOT NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"service_spec_id" NUMBER(10) NULL,

	"state" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_service_id" NUMBER(10) NULL,

	"resource_shared_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"resource_spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "cardinality_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_characteristic_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" NUMBER(10) NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "usr"
(

	"primaryKey" RAW(16) NOT NULL,

	"login" NVARCHAR2(255) NOT NULL,

	"password" NVARCHAR2(255) NULL,

	"locked" NUMBER(1) NOT NULL,

	"email" NVARCHAR2(255) NOT NULL,

	"domain" NVARCHAR2(255) NULL,

	"last_name" NVARCHAR2(255) NOT NULL,

	"first_name" NVARCHAR2(255) NULL,

	"middle_name" NVARCHAR2(255) NULL,

	"phone" NVARCHAR2(255) NULL,

	"phone_work" NVARCHAR2(255) NULL,

	"phone_mobile" NVARCHAR2(255) NULL,

	"position" NVARCHAR2(255) NULL,

	"department" NVARCHAR2(255) NULL,

	"photo" NVARCHAR2(255) NULL,

	"thumbnail" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_locked" DATE NULL,

	"dt_modified" DATE NULL,

	"dt_lastlogin" DATE NULL,

	"full_name" NVARCHAR2(255) NULL,

	"short_name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_shared"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NULL,

	"type" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"customer_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"parent_service_id" RAW(16) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"cfs_id" RAW(16) NOT NULL,

	"contragent_id" RAW(16) NULL,

	"resource_shared_id" RAW(16) NULL,

	"parent_id" RAW(16) NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "role"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_id" NUMBER(10) NOT NULL,

	"parent_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_service_id" NUMBER(10) NULL,

	"resource_shared_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"resource_spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "orderState"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceSpecCharacteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"type" RAW(16) NOT NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"dictionary_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"service_spec_id" NUMBER(10) NULL,

	"state" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"start_time" DATE NULL,

	"end_time" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resourceCommon"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "serviceOrder"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_completed" DATE NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"dt_started" DATE NULL,

	"external_id" RAW(16) NULL,

	"price" FLOAT(126) NOT NULL,

	"creator_id" RAW(16) NULL,

	"modifier_id" RAW(16) NULL,

	"contragent_id" RAW(16) NULL,

	"state" RAW(16) NOT NULL,

	"customer_id_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "userServiceSpec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "contragent"
	ADD CONSTRAINT "contragent_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "contragent_Icustomer_id" on "contragent" ("customer_id");

ALTER TABLE "user_service_spec"
	ADD CONSTRAINT "user_service_spec_Fservic_1044" FOREIGN KEY ("service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "user_service_spec_Iservic_7713" on "user_service_spec" ("service_spec_id_m0");

ALTER TABLE "user_service_spec"
	ADD CONSTRAINT "user_service_spec_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_service_spec_Iuser_id_m0" on "user_service_spec" ("user_id_m0");

ALTER TABLE "resourceUsageSpec"
	ADD CONSTRAINT "resourceUsageSpec_Fresour_3553" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resourceUsageSpec_Iresour_4429" on "resourceUsageSpec" ("resource_spec_id");

ALTER TABLE "resourceUsageSpec"
	ADD CONSTRAINT "resourceUsageSpec_Fcharac_1178" FOREIGN KEY ("type_m0") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "resourceUsageSpec_Itype_m0" on "resourceUsageSpec" ("type_m0");

ALTER TABLE "serviceSpecAcl"
	ADD CONSTRAINT "serviceSpecAcl_Fgrp_0" FOREIGN KEY ("group_id") REFERENCES "grp" ("primaryKey");

CREATE INDEX "serviceSpecAcl_Igroup_id" on "serviceSpecAcl" ("group_id");

ALTER TABLE "serviceSpecAcl"
	ADD CONSTRAINT "serviceSpecAcl_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceSpecAcl_Iservice_s_9139" on "serviceSpecAcl" ("service_spec_id");

ALTER TABLE "user_service_order"
	ADD CONSTRAINT "user_service_order_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_service_order_Iuser_id_m0" on "user_service_order" ("user_id_m0");

ALTER TABLE "user_service_order"
	ADD CONSTRAINT "user_service_order_Fservi_4149" FOREIGN KEY ("service_order_id_m0") REFERENCES "service_order" ("primaryKey");

CREATE INDEX "user_service_order_Iservi_1608" on "user_service_order" ("service_order_id_m0");

ALTER TABLE "service_spec"
	ADD CONSTRAINT "service_spec_Fcatalog_0" FOREIGN KEY ("catalog_key_m0") REFERENCES "catalog" ("primaryKey");

CREATE INDEX "service_spec_Icatalog_key_m0" on "service_spec" ("catalog_key_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_spec_0" FOREIGN KEY ("service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_Iservice_spec_id_m0" on "service" ("service_spec_id_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "service_Icontragent_id" on "service" ("contragent_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_FserviceState_0" FOREIGN KEY ("state_m0") REFERENCES "serviceState" ("primaryKey");

CREATE INDEX "service_Istate_m0" on "service" ("state_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "service_Iservice_spec_id" on "service" ("service_spec_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_0" FOREIGN KEY ("cfs_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "service_Icfs_id_m0" on "service" ("cfs_id_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_1" FOREIGN KEY ("parent_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "service_Iparent_id" on "service" ("parent_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "service_Icustomer_id" on "service" ("customer_id");

ALTER TABLE "resourceCharacteristic"
	ADD CONSTRAINT "resourceCharacteristic_Fr_7313" FOREIGN KEY ("resource_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resourceCharacteristic_Ir_7003" on "resourceCharacteristic" ("resource_id");

ALTER TABLE "dictionaryValue"
	ADD CONSTRAINT "dictionaryValue_Fdictionary_0" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "dictionaryValue_Idictionary_id" on "dictionaryValue" ("dictionary_id");

ALTER TABLE "userResourceSpec"
	ADD CONSTRAINT "userResourceSpec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userResourceSpec_Iuser_id" on "userResourceSpec" ("user_id");

ALTER TABLE "userResourceSpec"
	ADD CONSTRAINT "userResourceSpec_Fresourc_9298" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "userResourceSpec_Iresourc_2593" on "userResourceSpec" ("resource_spec_id");

ALTER TABLE "user_group"
	ADD CONSTRAINT "user_group_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_group_Iuser_id_m0" on "user_group" ("user_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_0" FOREIGN KEY ("creator_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Icreator_id_m0" on "service_order" ("creator_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fcontragent_0" FOREIGN KEY ("contragent_id_m0") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "service_order_Icontragent__497" on "service_order" ("contragent_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_1" FOREIGN KEY ("modifier_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Imodifier_id_m0" on "service_order" ("modifier_id_m0");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_Fservice_0" FOREIGN KEY ("clone_service_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "orderItem_Iclone_service_id_m0" on "orderItem" ("clone_service_id_m0");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_ForderItem_0" FOREIGN KEY ("parent_id") REFERENCES "orderItem" ("primaryKey");

CREATE INDEX "orderItem_Iparent_id" on "orderItem" ("parent_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_Fusr_0" FOREIGN KEY ("modifier_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "orderItem_Imodifier_id" on "orderItem" ("modifier_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_ForderState_0" FOREIGN KEY ("state_m0") REFERENCES "orderState" ("primaryKey");

CREATE INDEX "orderItem_Istate_m0" on "orderItem" ("state_m0");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_Fusr_1" FOREIGN KEY ("creator_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "orderItem_Icreator_id" on "orderItem" ("creator_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_FserviceOrder_0" FOREIGN KEY ("service_order_id") REFERENCES "serviceOrder" ("primaryKey");

CREATE INDEX "orderItem_Iservice_order_id" on "orderItem" ("service_order_id");

ALTER TABLE "orderItem"
	ADD CONSTRAINT "orderItem_Fservice_1" FOREIGN KEY ("service_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "orderItem_Iservice_id_m0" on "orderItem" ("service_id_m0");

ALTER TABLE "userServiceOrder"
	ADD CONSTRAINT "userServiceOrder_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userServiceOrder_Iuser_id" on "userServiceOrder" ("user_id");

ALTER TABLE "userServiceOrder"
	ADD CONSTRAINT "userServiceOrder_Fservice_9309" FOREIGN KEY ("service_order_id") REFERENCES "serviceOrder" ("primaryKey");

CREATE INDEX "userServiceOrder_Iservice_2711" on "userServiceOrder" ("service_order_id");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_role_Iuser_id_m0" on "user_role" ("user_id_m0");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Frole_0" FOREIGN KEY ("role_id_m0") REFERENCES "role" ("primaryKey");

CREATE INDEX "user_role_Irole_id_m0" on "user_role" ("role_id_m0");

ALTER TABLE "service_spec_characteristic"
	ADD CONSTRAINT "service_spec_characterist_3431" FOREIGN KEY ("type_m0") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "service_spec_characterist_5960" on "service_spec_characteristic" ("type_m0");

ALTER TABLE "serviceUsageSpec"
	ADD CONSTRAINT "serviceUsageSpec_Fcharact_9738" FOREIGN KEY ("type") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "serviceUsageSpec_Itype" on "serviceUsageSpec" ("type");

ALTER TABLE "serviceUsageSpec"
	ADD CONSTRAINT "serviceUsageSpec_Fservice_8984" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceUsageSpec_Iservice_8943" on "serviceUsageSpec" ("service_spec_id");

ALTER TABLE "resourceShared"
	ADD CONSTRAINT "resourceShared_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resourceShared_Icustomer_id" on "resourceShared" ("customer_id");

ALTER TABLE "resource_spec"
	ADD CONSTRAINT "resource_spec_Fresource_spec_0" FOREIGN KEY ("parent_id_m0") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_spec_Iparent_id_m0" on "resource_spec" ("parent_id_m0");

ALTER TABLE "serviceSpecCharacteristic"
	ADD CONSTRAINT "serviceSpecCharacteristic__625" FOREIGN KEY ("service_spec_id_m0") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceSpecCharacteristic_9751" on "serviceSpecCharacteristic" ("service_spec_id_m0");

ALTER TABLE "serviceSpecCharacteristic"
	ADD CONSTRAINT "serviceSpecCharacteristic_9536" FOREIGN KEY ("type") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "serviceSpecCharacteristic_2968" on "serviceSpecCharacteristic" ("type");

ALTER TABLE "serviceSpecCharacteristic"
	ADD CONSTRAINT "serviceSpecCharacteristic_5259" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "serviceSpecCharacteristic_4326" on "serviceSpecCharacteristic" ("dictionary_id");

ALTER TABLE "service_usage_spec"
	ADD CONSTRAINT "service_usage_spec_Fservi_9228" FOREIGN KEY ("service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_usage_spec_Iservi_6379" on "service_usage_spec" ("service_spec_id_m0");

ALTER TABLE "user_resource_spec"
	ADD CONSTRAINT "user_resource_spec_Fresou_2786" FOREIGN KEY ("resource_spec_id_m0") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "user_resource_spec_Iresou_1950" on "user_resource_spec" ("resource_spec_id_m0");

ALTER TABLE "user_resource_spec"
	ADD CONSTRAINT "user_resource_spec_Fusr_0" FOREIGN KEY ("user_id_m0") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_resource_spec_Iuser_id_m0" on "user_resource_spec" ("user_id_m0");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fservice_order_0" FOREIGN KEY ("service_order_id_m0") REFERENCES "service_order" ("primaryKey");

CREATE INDEX "order_item_Iservice_order_2962" on "order_item" ("service_order_id_m0");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Forder_item_0" FOREIGN KEY ("parent_id_m0") REFERENCES "order_item" ("primaryKey");

CREATE INDEX "order_item_Iparent_id_m0" on "order_item" ("parent_id_m0");

ALTER TABLE "serviceSpec"
	ADD CONSTRAINT "serviceSpec_Fcatalog_0" FOREIGN KEY ("catalog_key") REFERENCES "catalog" ("primaryKey");

CREATE INDEX "serviceSpec_Icatalog_key" on "serviceSpec" ("catalog_key");

ALTER TABLE "serviceSpec"
	ADD CONSTRAINT "serviceSpec_FserviceSpec_0" FOREIGN KEY ("parent_id_m0") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "serviceSpec_Iparent_id_m0" on "serviceSpec" ("parent_id_m0");

ALTER TABLE "serviceSpec"
	ADD CONSTRAINT "serviceSpec_FcardinalityType_0" FOREIGN KEY ("cardinality") REFERENCES "cardinalityType" ("primaryKey");

CREATE INDEX "serviceSpec_Icardinality" on "serviceSpec" ("cardinality");

ALTER TABLE "userRole"
	ADD CONSTRAINT "userRole_Frole_0" FOREIGN KEY ("role_id") REFERENCES "role" ("primaryKey");

CREATE INDEX "userRole_Irole_id" on "userRole" ("role_id");

ALTER TABLE "userRole"
	ADD CONSTRAINT "userRole_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userRole_Iuser_id" on "userRole" ("user_id");

ALTER TABLE "service_spec_acl"
	ADD CONSTRAINT "service_spec_acl_Fservice__354" FOREIGN KEY ("service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_spec_acl_Iservice_5199" on "service_spec_acl" ("service_spec_id_m0");

ALTER TABLE "service_spec_acl"
	ADD CONSTRAINT "service_spec_acl_Fgrp_0" FOREIGN KEY ("group_id_m0") REFERENCES "grp" ("primaryKey");

CREATE INDEX "service_spec_acl_Igroup_id_m0" on "service_spec_acl" ("group_id_m0");

ALTER TABLE "resource_spec_characteristic"
	ADD CONSTRAINT "resource_spec_characteris_3333" FOREIGN KEY ("type_m0") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "resource_spec_characterist_631" on "resource_spec_characteristic" ("type_m0");

ALTER TABLE "resourceSpec"
	ADD CONSTRAINT "resourceSpec_FresourceCommon_0" FOREIGN KEY ("resource_common_id") REFERENCES "resourceCommon" ("primaryKey");

CREATE INDEX "resourceSpec_Iresource_co_2338" on "resourceSpec" ("resource_common_id");

ALTER TABLE "resourceSpec"
	ADD CONSTRAINT "resourceSpec_Fcardinality_5795" FOREIGN KEY ("cardinality") REFERENCES "cardinalityType" ("primaryKey");

CREATE INDEX "resourceSpec_Icardinality" on "resourceSpec" ("cardinality");

ALTER TABLE "resourceSpec"
	ADD CONSTRAINT "resourceSpec_FresourceSpec_0" FOREIGN KEY ("parent_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resourceSpec_Iparent_id" on "resourceSpec" ("parent_id");

ALTER TABLE "resourceSpec"
	ADD CONSTRAINT "resourceSpec_FserviceSpec_0" FOREIGN KEY ("parent_service_spec_id_m0") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "resourceSpec_Iparent_serv_5007" on "resourceSpec" ("parent_service_spec_id_m0");

ALTER TABLE "userGroup"
	ADD CONSTRAINT "userGroup_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userGroup_Iuser_id" on "userGroup" ("user_id");

ALTER TABLE "userGroup"
	ADD CONSTRAINT "userGroup_Fgrp_0" FOREIGN KEY ("group_id") REFERENCES "grp" ("primaryKey");

CREATE INDEX "userGroup_Igroup_id" on "userGroup" ("group_id");

ALTER TABLE "dba"
	ADD CONSTRAINT "dba_Fdba_0" FOREIGN KEY ("prev_version") REFERENCES "dba" ("primaryKey");

CREATE INDEX "dba_Iprev_version" on "dba" ("prev_version");

ALTER TABLE "resource_characteristic"
	ADD CONSTRAINT "resource_characteristic_F_4295" FOREIGN KEY ("resource_id_m0") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_characteristic_I_8844" on "resource_characteristic" ("resource_id_m0");

ALTER TABLE "customerAcl"
	ADD CONSTRAINT "customerAcl_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "customerAcl_Icustomer_id" on "customerAcl" ("customer_id");

ALTER TABLE "customerAcl"
	ADD CONSTRAINT "customerAcl_Fgrp_0" FOREIGN KEY ("group_id_m0") REFERENCES "grp" ("primaryKey");

CREATE INDEX "customerAcl_Igroup_id_m0" on "customerAcl" ("group_id_m0");

ALTER TABLE "serviceCharacteristic"
	ADD CONSTRAINT "serviceCharacteristic_Fse_5515" FOREIGN KEY ("service_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "serviceCharacteristic_Ise_9282" on "serviceCharacteristic" ("service_id");

ALTER TABLE "resource_usage_spec"
	ADD CONSTRAINT "resource_usage_spec_Freso_8176" FOREIGN KEY ("resource_spec_id_m0") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_usage_spec_Ireso_9841" on "resource_usage_spec" ("resource_spec_id_m0");

ALTER TABLE "resource_shared"
	ADD CONSTRAINT "resource_shared_Fcustomer_0" FOREIGN KEY ("customer_id_m0") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_shared_Icustomer_9945" on "resource_shared" ("customer_id_m0");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fservice_0" FOREIGN KEY ("parent_service_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "resource_Iparent_service_id" on "resource" ("parent_service_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_FresourceSpec_0" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resource_Iresource_spec_id" on "resource" ("resource_spec_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fservice_1" FOREIGN KEY ("cfs_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "resource_Icfs_id" on "resource" ("cfs_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "resource_Icontragent_id" on "resource" ("contragent_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_FresourceShared_0" FOREIGN KEY ("resource_shared_id") REFERENCES "resourceShared" ("primaryKey");

CREATE INDEX "resource_Iresource_shared_id" on "resource" ("resource_shared_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fresource_0" FOREIGN KEY ("parent_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_Iparent_id" on "resource" ("parent_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_Icustomer_id" on "resource" ("customer_id");

ALTER TABLE "resourceSpecCharacteristic"
	ADD CONSTRAINT "resourceSpecCharacteristi_9568" FOREIGN KEY ("type") REFERENCES "characteristicType" ("primaryKey");

CREATE INDEX "resourceSpecCharacteristi_7709" on "resourceSpecCharacteristic" ("type");

ALTER TABLE "resourceSpecCharacteristic"
	ADD CONSTRAINT "resourceSpecCharacteristic_113" FOREIGN KEY ("resource_spec_id") REFERENCES "resourceSpec" ("primaryKey");

CREATE INDEX "resourceSpecCharacteristi_3412" on "resourceSpecCharacteristic" ("resource_spec_id");

ALTER TABLE "resourceSpecCharacteristic"
	ADD CONSTRAINT "resourceSpecCharacteristi_7194" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "resourceSpecCharacteristic_399" on "resourceSpecCharacteristic" ("dictionary_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fusr_0" FOREIGN KEY ("creator_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "serviceOrder_Icreator_id" on "serviceOrder" ("creator_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fusr_1" FOREIGN KEY ("modifier_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "serviceOrder_Imodifier_id" on "serviceOrder" ("modifier_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "serviceOrder_Icontragent_id" on "serviceOrder" ("contragent_id");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_ForderState_0" FOREIGN KEY ("state") REFERENCES "orderState" ("primaryKey");

CREATE INDEX "serviceOrder_Istate" on "serviceOrder" ("state");

ALTER TABLE "serviceOrder"
	ADD CONSTRAINT "serviceOrder_Fcustomer_0" FOREIGN KEY ("customer_id_m0") REFERENCES "customer" ("primaryKey");

CREATE INDEX "serviceOrder_Icustomer_id_m0" on "serviceOrder" ("customer_id_m0");

ALTER TABLE "userServiceSpec"
	ADD CONSTRAINT "userServiceSpec_FserviceSpec_0" FOREIGN KEY ("service_spec_id") REFERENCES "serviceSpec" ("primaryKey");

CREATE INDEX "userServiceSpec_Iservice__9271" on "userServiceSpec" ("service_spec_id");

ALTER TABLE "userServiceSpec"
	ADD CONSTRAINT "userServiceSpec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "userServiceSpec_Iuser_id" on "userServiceSpec" ("user_id");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


