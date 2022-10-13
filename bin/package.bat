@echo off
echo.
echo [打包]文件示踪系统后端服务
echo.

%~d0
cd %~dp0

cd ..
call mvn clean package -Dmaven.test.skip=true

pause