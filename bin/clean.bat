@echo off
echo.
echo [清除]文件示踪系统后端服务
echo.

%~d0
cd %~dp0

cd ..
call mvn clean

pause