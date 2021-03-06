@set PATH=%SYSTEMROOT%\System32\;%PATH%
@set INSTALL_PATH=$INSTALL_PATH
@set JAVA_HOME=$JAVA_HOME
@set CAFILE=startssl.pem
@cd /D %INSTALL_PATH%
@if exist .isInstalled goto end

@echo Downloading update.cmd
@if exist offline goto end
@java -jar bin\sha1test.jar update.cmd . %CAFILE% > NUL
:end
@echo node.updater.enabled=true>> freenet.ini

:noautoupdate
:end
