rem ��ͬһ��SVN���ڸ��¶����ͬ��SVN��
rem �ĵ���http://www.cnblogs.com/zhaoqingqing/p/4592063.html

@echo off
@echo ================�Զ�����SVN Start===============
rem SVN��װĿ¼
SET svn_home=C:\Program Files\TortoiseSVN\bin

rem SVN��ĿĿ¼(���޸Ķ�Ӧ��Ŀ¼)
SET svn_work_code=X:\xxgame\xx_code_vn
SET svn_work_gameres=X:\xxgame\xx_scheme_vn
SET svn_work_product=X:\xxgame\xx_product_vn

@echo ���ڸ���Ŀ¼ %svn_work_code%,%svn_work_gameres%,%svn_work_product%

rem ����ʵ�������excel��word�����״̬��������ʱ�����ͻ������Ҫ�ѽ��̽���(����wps��office����)
rem taskkill /f /im et.exe 
rem taskkill /f /im wps.exe
rem Echo ɱ���������

rem ִ��SVN��������,���¶Ի����Զ��ر�
"%svn_home%"\TortoiseProc.exe/command:update /path:"%svn_work_code%*%svn_work_gameres%*%svn_work_product%" /notempfile /closeonend:0

echo ==============�Զ�����SVN Finish==============