@echo off
echo.
echo [启动]文件示踪系统后端服务
echo.

cd %~dp0
cd ../geometry-admin/target

set JAVA_OPTS=-Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

java -jar %JAVA_OPTS% geometry-admin.jar

cd bin
pause