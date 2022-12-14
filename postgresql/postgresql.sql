/*
 Navicat Premium Data Transfer

 Source Server         : 233
 Source Server Type    : PostgreSQL
 Source Server Version : 110006
 Source Host           : 192.168.0.233:5432
 Source Catalog        : file
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110006
 File Encoding         : 65001

 Date: 14/10/2022 11:52:07
*/


-- ----------------------------
-- Sequence structure for gen_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_column_column_id_seq";
CREATE SEQUENCE "public"."gen_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gen_table_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_table_id_seq";
CREATE SEQUENCE "public"."gen_table_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_config_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_config_config_id_seq";
CREATE SEQUENCE "public"."sys_config_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dept_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dept_dept_id_seq";
CREATE SEQUENCE "public"."sys_dept_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dict_data_dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_data_dict_code_seq";
CREATE SEQUENCE "public"."sys_dict_data_dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_dict_type_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_type_dict_id_seq";
CREATE SEQUENCE "public"."sys_dict_type_dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_job_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_job_id_seq";
CREATE SEQUENCE "public"."sys_job_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_job_log_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_log_job_log_id_seq";
CREATE SEQUENCE "public"."sys_job_log_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_logininfor_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_logininfor_info_id_seq";
CREATE SEQUENCE "public"."sys_logininfor_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_menu_menu_id_seq";
CREATE SEQUENCE "public"."sys_menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_notice_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_notice_notice_id_seq";
CREATE SEQUENCE "public"."sys_notice_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_oper_log_oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_oper_log_oper_id_seq";
CREATE SEQUENCE "public"."sys_oper_log_oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_post_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_post_post_id_seq";
CREATE SEQUENCE "public"."sys_post_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_role_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_role_role_id_seq";
CREATE SEQUENCE "public"."sys_role_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_user_id_seq";
CREATE SEQUENCE "public"."sys_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('gen_table_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(500) COLLATE "pg_catalog"."default",
  "class_name" varchar(100) COLLATE "pg_catalog"."default",
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'crud'::character varying,
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "gen_path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT '/'::character varying,
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(0),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(0),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "public"."gen_table" VALUES (5, 'act_workflow_formdata', '????????????', 'ActWorkflowFormdata', 'crud', 'com.ruoyi.activiti', 'activiti', 'formdata', '?????????', 'danny', '0', '/', '{}', 'admin', '2020-11-02 10:28:53', '', '2020-11-02 10:29:39', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('gen_table_column_column_id_seq'::regclass),
  "table_id" varchar(64) COLLATE "pg_catalog"."default",
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" varchar(3) COLLATE "pg_catalog"."default",
  "is_increment" varchar(3) COLLATE "pg_catalog"."default",
  "is_required" varchar(3) COLLATE "pg_catalog"."default",
  "is_insert" varchar(3) COLLATE "pg_catalog"."default",
  "is_edit" varchar(3) COLLATE "pg_catalog"."default",
  "is_list" varchar(3) COLLATE "pg_catalog"."default",
  "is_query" varchar(3) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'EQ'::character varying,
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(0),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(0)
)
;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_blob_triggers";
CREATE TABLE "public"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_calendars";
CREATE TABLE "public"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_cron_triggers";
CREATE TABLE "public"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_fired_triggers";
CREATE TABLE "public"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" varchar(1) COLLATE "pg_catalog"."default",
  "requests_recovery" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_job_details";
CREATE TABLE "public"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "is_nonconcurrent" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "is_update_data" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "requests_recovery" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\011L\\000\\011beginTimeq\\000~\\000\\011L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\007endTimeq\\000~\\000\\011L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xppt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001uN\\375J\\300xppt\\000\\000pppt\\000\\0011t\\000\\0160/10 * * * * ?t\\000\\021ryTask.ryNoParamst\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\001t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\227\\240\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\011L\\000\\011beginTimeq\\000~\\000\\011L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\007endTimeq\\000~\\000\\011L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xppt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001uN\\375J\\300xppt\\000\\000pppt\\000\\0011t\\000\\0160/15 * * * * ?t\\000\\025ryTask.ryParams(''ry'')t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\234\\211\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\011L\\000\\011beginTimeq\\000~\\000\\011L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\007endTimeq\\000~\\000\\011L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xppt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001uN\\375J\\300xppt\\000\\000pppt\\000\\0011t\\000\\0160/20 * * * * ?t\\0008ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\003t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\345\\244\\232\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO "public"."qrtz_locks" VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO "public"."qrtz_locks" VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_scheduler_state";
CREATE TABLE "public"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO "public"."qrtz_scheduler_state" VALUES ('RuoyiScheduler', 'Lenovo-0061665558989865', 1665564726165, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simple_triggers";
CREATE TABLE "public"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simprop_triggers";
CREATE TABLE "public"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" varchar(1) COLLATE "pg_catalog"."default",
  "bool_prop_2" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_triggers";
CREATE TABLE "public"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO "public"."qrtz_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1665558990000, -1, 5, 'PAUSED', 'CRON', 1665558989000, 0, NULL, 2, NULL);
INSERT INTO "public"."qrtz_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1665558990000, -1, 5, 'PAUSED', 'CRON', 1665558990000, 0, NULL, 2, NULL);
INSERT INTO "public"."qrtz_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1665559000000, -1, 5, 'PAUSED', 'CRON', 1665558990000, 0, NULL, 2, NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
                                       "config_id" int4 NOT NULL DEFAULT nextval('sys_config_config_id_seq'::regclass),
                                       "config_name" varchar(100) COLLATE "pg_catalog"."default",
                                       "config_key" varchar(100) COLLATE "pg_catalog"."default",
                                       "config_value" varchar(500) COLLATE "pg_catalog"."default",
                                       "config_type" varchar(3) COLLATE "pg_catalog"."default" DEFAULT 'N'::character varying,
                                       "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                       "create_time" timestamp(0),
                                       "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                       "update_time" timestamp(0),
                                       "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '???????????????Y??? N??????';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '??????';
COMMENT ON TABLE "public"."sys_config" IS '???????????????';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "public"."sys_config" VALUES (1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow');
INSERT INTO "public"."sys_config" VALUES (2, '????????????-??????????????????', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????? 123456');
INSERT INTO "public"."sys_config" VALUES (3, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????theme-dark???????????????theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
                                     "dept_id" int8 NOT NULL DEFAULT nextval('sys_dept_dept_id_seq'::regclass),
                                     "parent_id" int8 DEFAULT 0,
                                     "ancestors" varchar(50) COLLATE "pg_catalog"."default",
                                     "dept_name" varchar(30) COLLATE "pg_catalog"."default",
                                     "order_num" int4 DEFAULT 0,
                                     "leader" varchar(20) COLLATE "pg_catalog"."default",
                                     "phone" varchar(11) COLLATE "pg_catalog"."default",
                                     "email" varchar(50) COLLATE "pg_catalog"."default",
                                     "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "del_flag" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "create_time" timestamp(0),
                                     "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "update_time" timestamp(0)
)
;
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '??????id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '?????????id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '????????????';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '????????????';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '?????????';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '????????????';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '??????';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '???????????????0???????????? 2???????????????';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '????????????';
COMMENT ON TABLE "public"."sys_dept" IS '?????????';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "public"."sys_dept" VALUES (100, 0, '0', '????????????', 0, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:41');
INSERT INTO "public"."sys_dept" VALUES (101, 100, '0,100', '???????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:19');
INSERT INTO "public"."sys_dept" VALUES (102, 100, '0,100', '???????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (103, 100, '0,100', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:13');
INSERT INTO "public"."sys_dept" VALUES (104, 100, '0,100', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:24');
INSERT INTO "public"."sys_dept" VALUES (105, 100, '0,100', '????????????', 3, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:29');
INSERT INTO "public"."sys_dept" VALUES (106, 100, '0,100', '????????????', 4, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:34');
INSERT INTO "public"."sys_dept" VALUES (107, 100, '0,100', '????????????', 5, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:41');
INSERT INTO "public"."sys_dept" VALUES (108, 102, '0,100,102', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (109, 102, '0,100,102', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
                                          "dict_code" int8 NOT NULL DEFAULT nextval('sys_dict_data_dict_code_seq'::regclass),
                                          "dict_sort" int4 DEFAULT 0,
                                          "dict_label" varchar(100) COLLATE "pg_catalog"."default",
                                          "dict_value" varchar(100) COLLATE "pg_catalog"."default",
                                          "dict_type" varchar(100) COLLATE "pg_catalog"."default",
                                          "css_class" varchar(100) COLLATE "pg_catalog"."default",
                                          "list_class" varchar(100) COLLATE "pg_catalog"."default",
                                          "is_default" varchar(3) COLLATE "pg_catalog"."default" DEFAULT 'N'::character varying,
                                          "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                          "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                          "create_time" timestamp(0),
                                          "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                          "update_time" timestamp(0),
                                          "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '????????????????????????????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '??????????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '???????????????Y??? N??????';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '??????';
COMMENT ON TABLE "public"."sys_dict_data" IS '???????????????';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '???', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '?????????');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '???', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '?????????');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '??????', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '??????', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '??????', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '??????', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '??????', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '??????', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '??????', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '??????', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '??????', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '???', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '???????????????');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '???', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '???????????????');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '??????', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '??????', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '??????', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '??????', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (18, 1, '??????', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (19, 2, '??????', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (20, 3, '??????', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (21, 4, '??????', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (22, 5, '??????', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (23, 6, '??????', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (24, 7, '??????', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (25, 8, '????????????', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (26, 9, '????????????', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (27, 1, '??????', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (28, 2, '??????', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '????????????');
INSERT INTO "public"."sys_dict_data" VALUES (100, 1, '?????????', '0', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:03:42', 'admin', '2020-10-28 22:40:58', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (101, 2, '??????', '1', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:03:50', 'admin', '2020-10-28 22:41:09', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (102, 3, '??????', '2', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:04:02', 'admin', '2020-10-28 22:41:17', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (103, 1, '??????', '??????', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:14', 'admin', '2020-11-04 17:41:02', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (104, 2, '??????', '??????', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:27', 'admin', '2020-11-04 17:41:07', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (105, 3, '??????', '??????', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:48', 'admin', '2020-11-04 17:41:12', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
                                          "dict_id" int8 NOT NULL DEFAULT nextval('sys_dict_type_dict_id_seq'::regclass),
                                          "dict_name" varchar(100) COLLATE "pg_catalog"."default",
                                          "dict_type" varchar(100) COLLATE "pg_catalog"."default",
                                          "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                          "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                          "create_time" timestamp(0),
                                          "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                          "update_time" timestamp(0),
                                          "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '??????';
COMMENT ON TABLE "public"."sys_dict_type" IS '???????????????';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1, '????????????', 'sys_user_sex', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (2, '????????????', 'sys_show_hide', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (3, '????????????', 'sys_normal_disable', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (4, '????????????', 'sys_job_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (5, '????????????', 'sys_job_group', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (6, '????????????', 'sys_yes_no', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (7, '????????????', 'sys_notice_type', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (8, '????????????', 'sys_notice_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (9, '????????????', 'sys_oper_type', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (10, '????????????', 'sys_common_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_dict_type" VALUES (100, 'OA??????', 'activiti_flow_type', '0', 'admin', '2020-10-28 00:01:56', 'admin', '2020-10-28 00:02:43', 'OA????????????');
INSERT INTO "public"."sys_dict_type" VALUES (101, '????????????', 'activiti_leave_type', '0', 'admin', '2020-10-28 00:06:10', 'admin', '2020-10-28 00:06:34', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
                                    "job_id" int8 NOT NULL DEFAULT nextval('sys_job_job_id_seq'::regclass),
                                    "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
                                    "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'DEFAULT'::character varying,
                                    "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                    "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
                                    "misfire_policy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT '3'::character varying,
                                    "concurrent" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '1'::character varying,
                                    "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                    "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                    "create_time" timestamp(0),
                                    "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                    "update_time" timestamp(0),
                                    "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '????????????';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '?????????????????????';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron???????????????';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '???????????????????????????1???????????? 2???????????? 3???????????????';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '?????????????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_job"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '????????????';
COMMENT ON TABLE "public"."sys_job" IS '?????????????????????';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "public"."sys_job" VALUES (1, '????????????????????????', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (2, '????????????????????????', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (3, '????????????????????????', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
                                        "job_log_id" int8 NOT NULL DEFAULT nextval('sys_job_log_job_log_id_seq'::regclass),
                                        "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
                                        "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
                                        "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                        "job_message" varchar(500) COLLATE "pg_catalog"."default",
                                        "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                        "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
                                        "create_time" timestamp(0)
)
;
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '????????????ID';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '????????????';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '?????????????????????';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '????????????';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '????????????';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '????????????';
COMMENT ON TABLE "public"."sys_job_log" IS '???????????????????????????';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
                                           "info_id" int8 NOT NULL DEFAULT nextval('sys_logininfor_info_id_seq'::regclass),
                                           "user_name" varchar(50) COLLATE "pg_catalog"."default",
                                           "ipaddr" varchar(50) COLLATE "pg_catalog"."default",
                                           "login_location" varchar(255) COLLATE "pg_catalog"."default",
                                           "browser" varchar(50) COLLATE "pg_catalog"."default",
                                           "os" varchar(50) COLLATE "pg_catalog"."default",
                                           "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                           "msg" varchar(255) COLLATE "pg_catalog"."default",
                                           "login_time" timestamp(0)
)
;
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '??????IP??????';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '????????????';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '???????????????';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '????????????';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '????????????';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '????????????';
COMMENT ON TABLE "public"."sys_logininfor" IS '??????????????????';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "public"."sys_logininfor" VALUES (1, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '200', '????????????', '2022-10-13 17:51:21');
INSERT INTO "public"."sys_logininfor" VALUES (2, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-14 17:06:26');
INSERT INTO "public"."sys_logininfor" VALUES (3, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '??????????????????', '2022-10-14 17:07:55');
INSERT INTO "public"."sys_logininfor" VALUES (4, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-14 17:07:58');
INSERT INTO "public"."sys_logininfor" VALUES (5, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-14 17:08:15');
INSERT INTO "public"."sys_logininfor" VALUES (6, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-14 17:08:27');
INSERT INTO "public"."sys_logininfor" VALUES (7, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-14 17:44:50');
INSERT INTO "public"."sys_logininfor" VALUES (8, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:22:20');
INSERT INTO "public"."sys_logininfor" VALUES (9, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-10-17 17:22:36');
INSERT INTO "public"."sys_logininfor" VALUES (10, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:22:44');
INSERT INTO "public"."sys_logininfor" VALUES (11, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-10-17 17:22:49');
INSERT INTO "public"."sys_logininfor" VALUES (12, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:22:53');
INSERT INTO "public"."sys_logininfor" VALUES (13, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '??????????????????', '2022-10-17 17:48:16');
INSERT INTO "public"."sys_logininfor" VALUES (14, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-10-17 17:48:22');
INSERT INTO "public"."sys_logininfor" VALUES (15, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:48:53');
INSERT INTO "public"."sys_logininfor" VALUES (16, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '??????????????????', '2022-10-17 17:49:01');
INSERT INTO "public"."sys_logininfor" VALUES (17, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:49:08');
INSERT INTO "public"."sys_logininfor" VALUES (18, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-10-17 17:49:09');
INSERT INTO "public"."sys_logininfor" VALUES (19, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '??????????????????', '2022-10-17 17:49:09');
INSERT INTO "public"."sys_logininfor" VALUES (20, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-10-17 17:49:10');
INSERT INTO "public"."sys_logininfor" VALUES (21, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????/????????????', '2022-10-17 17:49:14');
INSERT INTO "public"."sys_logininfor" VALUES (22, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '??????????????????', '2022-10-17 17:51:36');
INSERT INTO "public"."sys_logininfor" VALUES (23, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-17 17:51:41');
INSERT INTO "public"."sys_logininfor" VALUES (24, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-10-17 17:52:12');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
                                     "menu_id" int8 NOT NULL DEFAULT nextval('sys_menu_menu_id_seq'::regclass),
                                     "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                     "parent_id" int8 DEFAULT 0,
                                     "order_num" int4 DEFAULT 0,
                                     "path" varchar(200) COLLATE "pg_catalog"."default",
                                     "component" varchar(255) COLLATE "pg_catalog"."default",
                                     "is_frame" int4 DEFAULT 1,
                                     "is_cache" int4 DEFAULT 0,
                                     "menu_type" varchar(3) COLLATE "pg_catalog"."default",
                                     "visible" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "perms" varchar(100) COLLATE "pg_catalog"."default",
                                     "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT '#'::character varying,
                                     "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "create_time" timestamp(0),
                                     "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "update_time" timestamp(0),
                                     "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '?????????ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '??????????????????0??? 1??????';
COMMENT ON COLUMN "public"."sys_menu"."is_cache" IS '???????????????0?????? 1????????????';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '???????????????M?????? C?????? F?????????';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '????????????';
COMMENT ON TABLE "public"."sys_menu" IS '???????????????';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, '????????????', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (2, '????????????', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (3, '????????????', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (4, '????????????', 0, 4, 'http://ruoyi.vip', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (5, '????????????', 0, 4, 'activiti', NULL, 1, 0, 'M', '0', '0', 'activiti:modeler:list', 'cascader', 'admin', '2020-09-13 21:58:54', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (100, '????????????', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (101, '????????????', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (102, '????????????', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (103, '????????????', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (104, '????????????', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (105, '????????????', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (106, '????????????', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (107, '????????????', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (108, '????????????', 1, 9, 'log', 'system/log/index', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (109, '????????????', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (110, '????????????', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (111, '????????????', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (112, '????????????', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (113, '????????????', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (114, '????????????', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (115, '????????????', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (500, '????????????', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (501, '????????????', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2020-10-22 14:27:04', '', NULL, '??????????????????');
INSERT INTO "public"."sys_menu" VALUES (1001, '????????????', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1002, '????????????', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1003, '????????????', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1004, '????????????', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1005, '????????????', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1006, '????????????', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1007, '????????????', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1008, '????????????', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1009, '????????????', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1010, '????????????', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1011, '????????????', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1012, '????????????', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1013, '????????????', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1014, '????????????', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1015, '????????????', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1016, '????????????', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1017, '????????????', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1018, '????????????', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1019, '????????????', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1020, '????????????', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1021, '????????????', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1022, '????????????', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1023, '????????????', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1024, '????????????', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1025, '????????????', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1026, '????????????', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1027, '????????????', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
                                       "notice_id" int4 NOT NULL DEFAULT nextval('sys_notice_notice_id_seq'::regclass),
                                       "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                       "notice_type" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
                                       "notice_content" bytea,
                                       "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                       "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                       "create_time" timestamp(0),
                                       "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                       "update_time" timestamp(0),
                                       "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON TABLE "public"."sys_notice" IS '???????????????';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "public"."sys_notice" VALUES (1, '???????????????2018-07-01 ????????????????????????', '2', E'\\346\\226\\260\\347\\211\\210\\346\\234\\254\\345\\206\\205\\345\\256\\271', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '?????????');
INSERT INTO "public"."sys_notice" VALUES (2, '???????????????2018-07-01 ????????????????????????', '1', E'\\347\\273\\264\\346\\212\\244\\345\\206\\205\\345\\256\\271', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '?????????');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
                                         "oper_id" int8 NOT NULL DEFAULT nextval('sys_oper_log_oper_id_seq'::regclass),
                                         "title" varchar(50) COLLATE "pg_catalog"."default",
                                         "business_type" int4 DEFAULT 0,
                                         "method" varchar(100) COLLATE "pg_catalog"."default",
                                         "request_method" varchar(10) COLLATE "pg_catalog"."default",
                                         "operator_type" int4 DEFAULT 0,
                                         "oper_name" varchar(50) COLLATE "pg_catalog"."default",
                                         "dept_name" varchar(50) COLLATE "pg_catalog"."default",
                                         "oper_url" varchar(255) COLLATE "pg_catalog"."default",
                                         "oper_ip" varchar(50) COLLATE "pg_catalog"."default",
                                         "oper_location" varchar(255) COLLATE "pg_catalog"."default",
                                         "oper_param" varchar(2000) COLLATE "pg_catalog"."default",
                                         "json_result" varchar(2000) COLLATE "pg_catalog"."default",
                                         "status" int4 DEFAULT 0,
                                         "error_msg" varchar(2000) COLLATE "pg_catalog"."default",
                                         "oper_time" timestamp(0)
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '???????????????0?????? 1?????? 2?????? 3?????????';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '???????????????0?????? 1???????????? 2??????????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '??????URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '????????????';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '????????????';
COMMENT ON TABLE "public"."sys_oper_log" IS '??????????????????';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
                                     "post_id" int8 NOT NULL DEFAULT nextval('sys_post_post_id_seq'::regclass),
                                     "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
                                     "post_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                     "post_sort" int4 NOT NULL,
                                     "status" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
                                     "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "create_time" timestamp(0),
                                     "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "update_time" timestamp(0),
                                     "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '????????????';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '????????????';
COMMENT ON COLUMN "public"."sys_post"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '??????';
COMMENT ON TABLE "public"."sys_post" IS '???????????????';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "public"."sys_post" VALUES (1, 'ceo', '?????????', 1, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (2, 'se', '????????????', 2, '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-04 14:39:36', '');
INSERT INTO "public"."sys_post" VALUES (3, 'hr', '????????????', 3, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (4, 'user', '????????????', 4, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
                                     "role_id" int8 NOT NULL DEFAULT nextval('sys_role_role_id_seq'::regclass),
                                     "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
                                     "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                     "role_sort" int4 NOT NULL,
                                     "data_scope" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '1'::character varying,
                                     "menu_check_strictly" int2 DEFAULT 1,
                                     "dept_check_strictly" int2 DEFAULT 1,
                                     "status" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
                                     "del_flag" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "create_time" timestamp(0),
                                     "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "update_time" timestamp(0),
                                     "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '?????????????????????';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '????????????';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '???????????????1????????????????????? 2????????????????????? 3???????????????????????? 4????????????????????????????????????';
COMMENT ON COLUMN "public"."sys_role"."menu_check_strictly" IS '????????????????????????????????????';
COMMENT ON COLUMN "public"."sys_role"."dept_check_strictly" IS '????????????????????????????????????';
COMMENT ON COLUMN "public"."sys_role"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '???????????????0???????????? 2???????????????';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '??????';
COMMENT ON TABLE "public"."sys_role" IS '???????????????';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1, '???????????????', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '???????????????');
INSERT INTO "public"."sys_role" VALUES (2, '????????????', 'common', 2, '5', 1, 1, '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:28:07', '????????????');
INSERT INTO "public"."sys_role" VALUES (100, '????????????OA', 'dept', 3, '4', 1, 1, '0', '0', 'admin', '2020-11-10 22:26:07', '', '2020-11-10 22:27:52', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
                                          "role_id" int8 NOT NULL,
                                          "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '??????ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '????????????????????????';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "public"."sys_role_dept" VALUES (2, 100);
INSERT INTO "public"."sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
                                          "role_id" int8 NOT NULL,
                                          "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '??????ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '????????????????????????';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (2, 2000);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2001);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2002);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2003);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2004);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2005);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2006);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2007);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2008);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2000);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2001);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2002);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2003);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2004);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2005);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2006);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2007);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2008);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2009);
INSERT INTO "public"."sys_role_menu" VALUES (100, 2010);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
                                     "user_id" int8 NOT NULL DEFAULT nextval('sys_user_user_id_seq'::regclass),
                                     "dept_id" int8,
                                     "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
                                     "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
                                     "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying,
                                     "email" varchar(50) COLLATE "pg_catalog"."default",
                                     "phonenumber" varchar(11) COLLATE "pg_catalog"."default",
                                     "sex" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "avatar" varchar(256) COLLATE "pg_catalog"."default",
                                     "password" varchar(100) COLLATE "pg_catalog"."default",
                                     "status" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "del_flag" varchar(3) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
                                     "login_ip" varchar(50) COLLATE "pg_catalog"."default",
                                     "login_date" timestamp(0),
                                     "create_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "create_time" timestamp(0),
                                     "update_by" varchar(64) COLLATE "pg_catalog"."default",
                                     "update_time" timestamp(0),
                                     "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '???????????????00???????????????';
COMMENT ON COLUMN "public"."sys_user"."email" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."phonenumber" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '???????????????0??? 1??? 2?????????';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."password" IS '??????';
COMMENT ON COLUMN "public"."sys_user"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '???????????????0???????????? 2???????????????';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '????????????IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '??????????????????';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '?????????';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '????????????';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '?????????';
COMMENT ON TABLE "public"."sys_user" IS '???????????????';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '??????', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/10/25/f2304bcb-a3ee-4471-bc33-4431ab80af5a.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2020-10-22 14:27:04', 'admin', '2020-10-22 14:27:04', '', NULL, '?????????');
INSERT INTO "public"."sys_user" VALUES (2, 105, 'ry', '??????', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2020-10-22 14:27:04', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-02 15:52:50', '?????????');
INSERT INTO "public"."sys_user" VALUES (100, 103, 'guanxing', '??????', '00', '1@ry.com', '18600000001', '0', '', '$2a$10$ekiSpWpUVv8/WuUS1up8XuNah.FVbJ5ZC9XdvqWxBE5qc2qP6KF6W', '0', '0', '', NULL, 'admin', '2020-11-04 14:39:07', 'admin', '2020-11-10 22:29:48', NULL);
INSERT INTO "public"."sys_user" VALUES (101, 103, 'guanyu', '??????', '00', '2@ry.com', '18600000002', '0', '', '$2a$10$CT.xyhiTacc9V.X8YFfdDeaU68Li9C9MNpAssJ/W4v.1MC.AtiOsa', '0', '0', '', NULL, 'admin', '2020-11-04 14:40:43', 'admin', '2020-11-10 22:30:29', NULL);
INSERT INTO "public"."sys_user" VALUES (102, 100, 'zhugeliang', '?????????', '00', '3@ry.com', '18600000003', '0', '', '$2a$10$iOYs0XUxmyOF5PDxNGyNt.qf6.LpUzBPRBhbIAwlmrN7lgjjBd0KO', '0', '0', '', NULL, 'admin', '2020-11-04 14:41:37', 'admin', '2020-11-10 22:30:37', NULL);
INSERT INTO "public"."sys_user" VALUES (103, 103, 'zhaoyun', '??????', '00', '4@ry.com', '18600000004', '0', '', '$2a$10$JILiC3cILDSk0EgDprEr9OS1pNxp9fM8vuXBC.VRxds.bwHFE/gba', '0', '0', '', NULL, 'admin', '2020-11-08 15:52:30', 'admin', '2020-11-10 22:30:44', NULL);
INSERT INTO "public"."sys_user" VALUES (104, 103, 'zhoucang', '??????', '00', '5@ry.com', '18600000005', '0', '', '$2a$10$ekiSpWpUVv8/WuUS1up8XuNah.FVbJ5ZC9XdvqWxBE5qc2qP6KF6W', '0', '0', '', NULL, 'admin', '2020-11-04 14:39:07', 'admin', '2020-11-10 22:29:48', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
                                          "user_id" int8 NOT NULL,
                                          "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '??????ID';
COMMENT ON TABLE "public"."sys_user_post" IS '???????????????????????????';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "public"."sys_user_post" VALUES (1, 1);
INSERT INTO "public"."sys_user_post" VALUES (2, 3);
INSERT INTO "public"."sys_user_post" VALUES (100, 4);
INSERT INTO "public"."sys_user_post" VALUES (101, 2);
INSERT INTO "public"."sys_user_post" VALUES (102, 3);
INSERT INTO "public"."sys_user_post" VALUES (103, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
                                          "user_id" int8 NOT NULL,
                                          "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '??????ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '??????ID';
COMMENT ON TABLE "public"."sys_user_role" IS '?????????????????????';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (1, 1);
INSERT INTO "public"."sys_user_role" VALUES (2, 2);
INSERT INTO "public"."sys_user_role" VALUES (100, 2);
INSERT INTO "public"."sys_user_role" VALUES (101, 100);
INSERT INTO "public"."sys_user_role" VALUES (102, 100);
INSERT INTO "public"."sys_user_role" VALUES (103, 100);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_column_column_id_seq"
OWNED BY "public"."gen_table_column"."column_id";
SELECT setval('"public"."gen_table_column_column_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_table_id_seq"
OWNED BY "public"."gen_table"."table_id";
SELECT setval('"public"."gen_table_table_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_config_config_id_seq"
OWNED BY "public"."sys_config"."config_id";
SELECT setval('"public"."sys_config_config_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dept_dept_id_seq"
OWNED BY "public"."sys_dept"."dept_id";
SELECT setval('"public"."sys_dept_dept_id_seq"', 111, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_data_dict_code_seq"
OWNED BY "public"."sys_dict_data"."dict_code";
SELECT setval('"public"."sys_dict_data_dict_code_seq"', 107, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_type_dict_id_seq"
OWNED BY "public"."sys_dict_type"."dict_id";
SELECT setval('"public"."sys_dict_type_dict_id_seq"', 103, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_job_id_seq"
OWNED BY "public"."sys_job"."job_id";
SELECT setval('"public"."sys_job_job_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_log_job_log_id_seq"
OWNED BY "public"."sys_job_log"."job_log_id";
SELECT setval('"public"."sys_job_log_job_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_logininfor_info_id_seq"
OWNED BY "public"."sys_logininfor"."info_id";
SELECT setval('"public"."sys_logininfor_info_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_menu_menu_id_seq"
OWNED BY "public"."sys_menu"."menu_id";
SELECT setval('"public"."sys_menu_menu_id_seq"', 1029, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_notice_notice_id_seq"
OWNED BY "public"."sys_notice"."notice_id";
SELECT setval('"public"."sys_notice_notice_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_oper_log_oper_id_seq"
OWNED BY "public"."sys_oper_log"."oper_id";
SELECT setval('"public"."sys_oper_log_oper_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_post_post_id_seq"
OWNED BY "public"."sys_post"."post_id";
SELECT setval('"public"."sys_post_post_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_role_role_id_seq"
OWNED BY "public"."sys_role"."role_id";
SELECT setval('"public"."sys_role_role_id_seq"', 102, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_user_user_id_seq"
OWNED BY "public"."sys_user"."user_id";
SELECT setval('"public"."sys_user_user_id_seq"', 106, true);

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "sched_name" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "PRIMARY" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "PRIMARY00000" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "PRIMARY00001" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE UNIQUE INDEX "dict_type" ON "public"."sys_dict_type" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "PRIMARY00002" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "PRIMARY00003" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "PRIMARY00004" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "PRIMARY00005" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "PRIMARY00006" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "PRIMARY00007" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "PRIMARY00008" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "PRIMARY00009" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "PRIMARY00010" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "PRIMARY00011" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "PRIMARY00012" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "PRIMARY00013" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "public"."sys_user_post" ADD CONSTRAINT "PRIMARY00014" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "PRIMARY00015" PRIMARY KEY ("user_id", "role_id");
