:: ttp://stackoverflow.com/questions/3179649/getting-the-current-revision-number-on-command-line-via-tortoisesvn
:: ����window�µ�tortoisesvn��ȡ����svn�����İ汾��
:: SubWCRev�����滻���Լ����ص�svn����

for /f "tokens=5" %%i in ('SubWCRev  e:\3dsn\client\client_demo_ios\^|find "Last committed at revision"') do set version=%%i

echo %version%

pause