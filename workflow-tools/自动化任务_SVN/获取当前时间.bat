

 set hour=%time:~,2%
if "%time:~,1%"==" " set hour=0%time:~1,1%

:: �ַ���ƴ����ֱ������
set log_file = log_%date:~0,4%-%date:~5,2%-%date:~8,2%_%hour%-%time:~3,2%-%time:~6,2%.log
::��ʽ���£�log_2017-03-21_10-29-02.log 
echo %log_file%
pause