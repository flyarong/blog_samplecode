REM cd %~dp0
rem �ڼƻ�������ʹ��
cd /d %~dp0
cd .\..\
REM git commit �Cm "���ע��"
git add .
git commit -m "auto sync"
git push origin
REM git commit -a

REM ��ĸ��µ�Զ�̷�����,�﷨Ϊ git push [Զ����] [���ط�֧]:[Զ�̷�֧]
git push origin master
