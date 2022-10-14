# springboot-filesystem

#简介
一套全部开源的快速开发平台
前端采用Vue、Element UI。
后端采用Spring Boot、Spring Security、Redis & Jwt。
权限认证使用Jwt，支持多终端认证系统。
支持加载动态权限菜单，多方式轻松权限控制。
高效率开发，使用代码生成器可以一键生成前后端代码。
提供了技术栈（Vue3 Element Plus Vite）版本RuoYi-Vue3，保持同步更新。
提供了单应用版本RuoYi-Vue-fast，Oracle版本RuoYi-Vue-Oracle，保持同步更新。
不分离版本，请移步RuoYi，微服务版本，请移步RuoYi-Cloud

https://gitee.com/y_project/RuoYi
https://gitee.com/y_project/RuoYi-Cloud

#内置功能
1.用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.岗位管理：配置系统用户所属担任职务。
4.菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.参数管理：对系统动态配置常用参数。
8.通知公告：系统通知公告信息发布维护。
9.操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
10.登录日志：系统登录日志记录查询包含登录异常。
11.在线用户：当前系统中活跃用户状态监控。
12.定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
13.代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
14.系统接口：根据业务代码自动生成相关的api接口文档。
15.服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
16.缓存监控：对系统的缓存信息查询，命令统计等。
17.在线构建器：拖动表单元素生成相应的HTML代码。
18.连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。

##测试账号
流程管理账号：admin / admin123

请假流程测试账号

普通员工1：guanxing / 123456

普通员工2：zhoucang / 123456

部门领导1：guanyu / 123456

部门领导2：zhaoyun / 123456

人事：zhugeliang / 123456





##1、开发
# 进入项目目录
cd geometry-ui

# 安装依赖
npm install

# 建议不要直接使用 cnpm 安装依赖，会有各种诡异的 bug。可以通过如下操作解决 npm 下载速度慢的问题
npm install --registry=https://registry.npmmirror.com

# 启动服务
npm run dev

浏览器访问 http://localhost:80

##2、发布
# 构建测试环境
npm run build:stage

# 构建生产环境
npm run build:prod

# 参考
https://gitee.com/y_project/RuoYi-Vue.git