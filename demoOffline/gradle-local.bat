@echo off
setlocal EnableExtensions

set "GRADLE_HOME=%~dp0..\Program\gradle-9.7.1"
set "JAVA_HOME=%~dp0..\Program\jdk-21.0.12.1"
set "GRADLE_USER_HOME=%~dp0..\repository\.gradle"
set "PATH=%GRADLE_HOME%\bin;%JAVA_HOME%\bin;%PATH%"

if not exist "%GRADLE_HOME%\bin\gradle.bat" (
    echo ERROR: Gradle was not found at:
    echo %GRADLE_HOME%
    exit /b 1
)

if not exist "%JAVA_HOME%\bin\java.exe" (
    echo ERROR: Java was not found at:
    echo %JAVA_HOME%
    exit /b 1
)

call "%GRADLE_HOME%\bin\gradle.bat" %*

set "EXIT_CODE=%ERRORLEVEL%"
endlocal & exit /b %EXIT_CODE%
