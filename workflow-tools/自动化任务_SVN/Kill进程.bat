@echo offEcho
tasklist /V /S localhost /U %username% >temp_process_list.txt  
type temp_process_list.txt | find "et.exe"  | find "wps.exe" 

if errorlevel 1 goto NotExist
if errorlevel 0 goto KillProcess

:NotExist
echo ���̲����ڣ�������

:KillProcess
Echo ����ɱ������...
rem WPS��صĽ��� Kill
taskkill /f /im et.exe
taskkill /f /im wps.exe
Echo ɱ���������

del temp_process_list.txt
pause