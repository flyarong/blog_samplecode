### Microsoft.Office.Interop.Excel

dll在office的安装目录下有

参考：https://cloud.tencent.com/developer/ask/70416



https://docs.microsoft.com/en-us/dotnet/api/microsoft.office.interop.excel._worksheet?view=excel-pia





### oldb:

文档：https://docs.microsoft.com/zh-cn/dotnet/api/system.data.oledb?view=netframework-4.7.2



像sql一样操作excel：https://www.cnblogs.com/yidaimu/p/3528188.html



[C#读写EXCEL（OLEDB方式）](https://blog.csdn.net/qq_33459369/article/details/79308361)

[【.net】未在本地计算机上注册“microsoft.ACE.oledb.12.0”提供程序解决办法](https://www.cnblogs.com/willingtolove/p/9630485.html)





### npoi

excel2007格式无法打开

<https://github.com/tonyqus/npoi/issues/182>

使用npoi对应版本的SharpZipLib，比如：

NPOI.2.4.1/net40/*.dll

SharpZipLib.0.86.0



创建xlsx格式和xls格式

把   HSSFWorkbook wk = new HSSFWorkbook(fs);

改成 XSSFWorkbook wk = new XSSFWorkbook(fs); 就可以了

应该数据流写入的 是 .xlsx 的数据模式但是 用的是.xls的后缀名,导致数据识别错误