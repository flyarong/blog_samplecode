tasklist /nh>temp_proecess.txt
find /i "QQ.exe" temp_proecess.txt
if ERRORLEVEL 1 (echo qq.exe������) else (echo qq.ex����)

del temp_proecess.text
pause