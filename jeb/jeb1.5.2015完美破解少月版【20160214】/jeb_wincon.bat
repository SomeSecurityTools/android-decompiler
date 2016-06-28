@echo off

echo "****************************************************"
echo "*   This JEB floating is cracked by colordancer , and fixed by sevenluna on 2016.02.16.  *"
echo "*   Fixed:Resolved a misstake  invoked by Downing swt.jar; Altered an important file jeb_wincon.bat.   *"
echo "*   Waring: Please modify some setting in this bat file,especially JAVA_HOME ,before you want to use it*"
echo "****************************************************"


rem Start-up script for JEB (Windows Console)

rem set JAVA_HOME=C:\Program Files (x86)\Java\jdk1.7.0_65\
rem set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_65\
set JAVA_HOME=C:\Program Files (x86)\Java\jre1.8.0_40\
rem set JAVA_HOME=C:\Program Files\Java\jre7\

rem Prefer a JDK over a JRE, which allows support for JEB native Java plugins
if defined JAVA_HOME (set base="%JAVA_HOME%\bin") else (set base="%SystemRoot%\System32")
set JAVA=%base%\java.exe

rem Note: Make sure your SWT build matches your Java build (32-bit or 64-bit)
rem If the Java path generation does not yield a correct result, manually set
rem the JAVA variable (defined above) to a correct value





:runjeb
set JEBPATH="%~dp0\bin\jeb.jar"

rem Allow the Java VM to allocate up to 2 Gb of memory
%JAVA% -Xmx1024m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -jar %JEBPATH% %*
rem %JAVA% -Xmx4096m -XX:-UseParallelGC -XX:MinHeapFreeRatio=15 -jar %JEBPATH% %*
