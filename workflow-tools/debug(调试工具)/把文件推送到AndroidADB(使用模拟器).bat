@echo off

for /f "delims=" %%i in ( 'where adb') do set ADB=%%i
if not defined ADB (
	echo path��δ�ҵ�adb.exe
	goto end
)
:: ģ������·��
set ADB=C:\Program Files (x86)\Droid4X\adb.exe
:: Ҫ���͵�Ŀ¼
set DocLuaRoot=/mnt/sdcard/Android/data/com.xxx/files/Lua
set FILE=%1
set relativePath=%FILE:*Product\Lua\=%
set relativePath=%relativePath:\=/%

rem ���ܣ�
%~dp0\FileEncryptor.exe %FILE% file.tmp
"%ADB%" push file.tmp %DocLuaRoot%/%relativePath%.k

rem %ADB% push %FILE% %DocLuaRoot%/%relativePath%.k  

del file.tmp

echo �ѽ�%relativePath%���ܲ�������
echo %DocLuaRoot%/%relativePath%.k
:end
pause