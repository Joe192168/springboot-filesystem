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

 Date: 14/10/2022 10:12:25
*/


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

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "public"."sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '初始化密码 123456');
INSERT INTO "public"."sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-10-22 14:27:04', '', NULL, '深色主题theme-dark，浅色主题theme-light');

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

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "public"."sys_dept" VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:41');
INSERT INTO "public"."sys_dept" VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:19');
INSERT INTO "public"."sys_dept" VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (103, 100, '0,100', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:13');
INSERT INTO "public"."sys_dept" VALUES (104, 100, '0,100', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:24');
INSERT INTO "public"."sys_dept" VALUES (105, 100, '0,100', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:29');
INSERT INTO "public"."sys_dept" VALUES (106, 100, '0,100', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:34');
INSERT INTO "public"."sys_dept" VALUES (107, 100, '0,100', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:10:41');
INSERT INTO "public"."sys_dept" VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);
INSERT INTO "public"."sys_dept" VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-10-22 14:27:04', '', NULL);

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

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '性别男');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '性别女');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '显示菜单');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '隐藏菜单');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '默认分组');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '系统分组');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '系统默认是');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '系统默认否');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '通知');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '公告');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '关闭状态');
INSERT INTO "public"."sys_dict_data" VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '新增操作');
INSERT INTO "public"."sys_dict_data" VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '修改操作');
INSERT INTO "public"."sys_dict_data" VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '删除操作');
INSERT INTO "public"."sys_dict_data" VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '授权操作');
INSERT INTO "public"."sys_dict_data" VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '导出操作');
INSERT INTO "public"."sys_dict_data" VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '导入操作');
INSERT INTO "public"."sys_dict_data" VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '强退操作');
INSERT INTO "public"."sys_dict_data" VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '生成操作');
INSERT INTO "public"."sys_dict_data" VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '清空操作');
INSERT INTO "public"."sys_dict_data" VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (100, 1, '进行中', '0', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:03:42', 'admin', '2020-10-28 22:40:58', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (101, 2, '成功', '1', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:03:50', 'admin', '2020-10-28 22:41:09', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (102, 3, '失败', '2', 'activiti_flow_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:04:02', 'admin', '2020-10-28 22:41:17', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (103, 1, '年假', '年假', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:14', 'admin', '2020-11-04 17:41:02', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (104, 2, '病假', '病假', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:27', 'admin', '2020-11-04 17:41:07', NULL);
INSERT INTO "public"."sys_dict_data" VALUES (105, 3, '事假', '事假', 'activiti_leave_type', NULL, NULL, 'N', '0', 'admin', '2020-10-28 00:07:48', 'admin', '2020-11-04 17:41:12', NULL);

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

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '用户性别列表');
INSERT INTO "public"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '菜单状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '系统开关列表');
INSERT INTO "public"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '任务状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '任务分组列表');
INSERT INTO "public"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '系统是否列表');
INSERT INTO "public"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '通知类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '通知状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '操作类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '登录状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (100, 'OA状态', 'activiti_flow_type', '0', 'admin', '2020-10-28 00:01:56', 'admin', '2020-10-28 00:02:43', 'OA流程状态');
INSERT INTO "public"."sys_dict_type" VALUES (101, '请假类型', 'activiti_leave_type', '0', 'admin', '2020-10-28 00:06:10', 'admin', '2020-10-28 00:06:34', NULL);

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

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "public"."sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-10-22 14:27:04', '', NULL, '');

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

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "public"."sys_logininfor" VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '200', '登录成功', '2022-10-13 17:51:21');

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

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2020-10-22 14:27:04', '', NULL, '系统管理目录');
INSERT INTO "public"."sys_menu" VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2020-10-22 14:27:04', '', NULL, '系统监控目录');
INSERT INTO "public"."sys_menu" VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2020-10-22 14:27:04', '', NULL, '系统工具目录');
INSERT INTO "public"."sys_menu" VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2020-10-22 14:27:04', '', NULL, '若依官网地址');
INSERT INTO "public"."sys_menu" VALUES (5, '流程菜单', 0, 4, 'activiti', NULL, 1, 0, 'M', '0', '0', 'activiti:modeler:list', 'cascader', 'admin', '2020-09-13 21:58:54', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2020-10-22 14:27:04', '', NULL, '用户管理菜单');
INSERT INTO "public"."sys_menu" VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2020-10-22 14:27:04', '', NULL, '角色管理菜单');
INSERT INTO "public"."sys_menu" VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2020-10-22 14:27:04', '', NULL, '菜单管理菜单');
INSERT INTO "public"."sys_menu" VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2020-10-22 14:27:04', '', NULL, '部门管理菜单');
INSERT INTO "public"."sys_menu" VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2020-10-22 14:27:04', '', NULL, '岗位管理菜单');
INSERT INTO "public"."sys_menu" VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2020-10-22 14:27:04', '', NULL, '字典管理菜单');
INSERT INTO "public"."sys_menu" VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2020-10-22 14:27:04', '', NULL, '参数设置菜单');
INSERT INTO "public"."sys_menu" VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2020-10-22 14:27:04', '', NULL, '通知公告菜单');
INSERT INTO "public"."sys_menu" VALUES (108, '日志管理', 1, 9, 'log', 'system/log/index', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2020-10-22 14:27:04', '', NULL, '日志管理菜单');
INSERT INTO "public"."sys_menu" VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2020-10-22 14:27:04', '', NULL, '在线用户菜单');
INSERT INTO "public"."sys_menu" VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2020-10-22 14:27:04', '', NULL, '定时任务菜单');
INSERT INTO "public"."sys_menu" VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2020-10-22 14:27:04', '', NULL, '数据监控菜单');
INSERT INTO "public"."sys_menu" VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2020-10-22 14:27:04', '', NULL, '服务监控菜单');
INSERT INTO "public"."sys_menu" VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2020-10-22 14:27:04', '', NULL, '表单构建菜单');
INSERT INTO "public"."sys_menu" VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2020-10-22 14:27:04', '', NULL, '代码生成菜单');
INSERT INTO "public"."sys_menu" VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2020-10-22 14:27:04', '', NULL, '系统接口菜单');
INSERT INTO "public"."sys_menu" VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2020-10-22 14:27:04', '', NULL, '操作日志菜单');
INSERT INTO "public"."sys_menu" VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2020-10-22 14:27:04', '', NULL, '登录日志菜单');
INSERT INTO "public"."sys_menu" VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2020-10-22 14:27:04', '', NULL, '');

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

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "public"."sys_notice" VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', E'\\346\\226\\260\\347\\211\\210\\346\\234\\254\\345\\206\\205\\345\\256\\271', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '管理员');
INSERT INTO "public"."sys_notice" VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', E'\\347\\273\\264\\346\\212\\244\\345\\206\\205\\345\\256\\271', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '管理员');

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

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "public"."sys_post" VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (2, 'se', '部门经理', 2, '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-04 14:39:36', '');
INSERT INTO "public"."sys_post" VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2020-10-22 14:27:04', '', NULL, '');

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

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2020-10-22 14:27:04', '', NULL, '超级管理员');
INSERT INTO "public"."sys_role" VALUES (2, '普通角色', 'common', 2, '5', 1, 1, '0', '0', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-10 22:28:07', '普通角色');
INSERT INTO "public"."sys_role" VALUES (100, '部门历史OA', 'dept', 3, '4', 1, 1, '0', '0', 'admin', '2020-11-10 22:26:07', '', '2020-11-10 22:27:52', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;

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

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/10/25/f2304bcb-a3ee-4471-bc33-4431ab80af5a.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2020-10-22 14:27:04', 'admin', '2020-10-22 14:27:04', '', NULL, '管理员');
INSERT INTO "public"."sys_user" VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2020-10-22 14:27:04', 'admin', '2020-10-22 14:27:04', 'admin', '2020-11-02 15:52:50', '测试员');
INSERT INTO "public"."sys_user" VALUES (100, 103, 'guanxing', '关兴', '00', '1@ry.com', '18600000001', '0', '', '$2a$10$ekiSpWpUVv8/WuUS1up8XuNah.FVbJ5ZC9XdvqWxBE5qc2qP6KF6W', '0', '0', '', NULL, 'admin', '2020-11-04 14:39:07', 'admin', '2020-11-10 22:29:48', NULL);
INSERT INTO "public"."sys_user" VALUES (101, 103, 'guanyu', '关羽', '00', '2@ry.com', '18600000002', '0', '', '$2a$10$CT.xyhiTacc9V.X8YFfdDeaU68Li9C9MNpAssJ/W4v.1MC.AtiOsa', '0', '0', '', NULL, 'admin', '2020-11-04 14:40:43', 'admin', '2020-11-10 22:30:29', NULL);
INSERT INTO "public"."sys_user" VALUES (102, 100, 'zhugeliang', '诸葛亮', '00', '3@ry.com', '18600000003', '0', '', '$2a$10$iOYs0XUxmyOF5PDxNGyNt.qf6.LpUzBPRBhbIAwlmrN7lgjjBd0KO', '0', '0', '', NULL, 'admin', '2020-11-04 14:41:37', 'admin', '2020-11-10 22:30:37', NULL);
INSERT INTO "public"."sys_user" VALUES (103, 103, 'zhaoyun', '赵云', '00', '4@ry.com', '18600000004', '0', '', '$2a$10$JILiC3cILDSk0EgDprEr9OS1pNxp9fM8vuXBC.VRxds.bwHFE/gba', '0', '0', '', NULL, 'admin', '2020-11-08 15:52:30', 'admin', '2020-11-10 22:30:44', NULL);
INSERT INTO "public"."sys_user" VALUES (104, 103, 'zhoucang', '周仓', '00', '5@ry.com', '18600000005', '0', '', '$2a$10$ekiSpWpUVv8/WuUS1up8XuNah.FVbJ5ZC9XdvqWxBE5qc2qP6KF6W', '0', '0', '', NULL, 'admin', '2020-11-04 14:39:07', 'admin', '2020-11-10 22:29:48', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;

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
