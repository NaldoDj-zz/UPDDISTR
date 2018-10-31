@setlocal enableextensions enabledelayedexpansion
@echo off
    cls
    echo BATCH FILE FOR UPDDISTR
    SET UPDDISTR_DRV=E:
    SET UPDDISTR_PTH=E:\Totvs\Microsiga\protheus_data\systemload\
    SET UPDDISTR_EXE=E:\Totvs\Microsiga\protheus11\bin\smartclient\Smartclient.exe
    SET UPDDISTR_EMP=01
    SET UPDDISTR_FIL=01
    SET UPDDISTR_CON=slave1
    SET UPDDISTR_ENV=totvs
    rem ============================================================================
    %UPDDISTR_DRV%
    CD UPDDISTR_PTH
    IF EXIST sdfbra_upd.txt (
        ATTRIB sdfbra_upd.txt -r
        DEL sdfbra_upd.txt /F /Q
    )
    dir /ON .\sdfbra\ /a /b > sdfbra_upd.txt
    ATTRIB sdfbra_upd.txt +r
    dir /ON .\hlpdf\ /a /b > hlpdf_upd.txt
    ATTRIB hlpdf_upd.txt +r
    dir /ON .\sx2_unq\ /a /b > sx2.unq_upd.txt
    ATTRIB sx2.unq_upd.txt +r
    for /f %%f in (sdfbra_upd.txt) do (
        call sdfrmv %%f
        echo executando UPDDISTR para %%f aguarde...
        call %UPDDISTR_EXE% -q -p=UPDDISTR -a=%UPDDISTR_EMP%;%UPDDISTR_FIL% -c=%UPDDISTR_CON% -e=%UPDDISTR_ENV% -m -l
    )
    ATTRIB sdfbra_upd.txt -r
    DEL sdfbra_upd.txt /F /Q    
    ATTRIB hlpdf_upd.txt -r
    DEL hlpdf_upd.txt /F /Q
    ATTRIB sx2.unq_upd.txt -r
    DEL sx2.unq_upd.txt /F /Q
    call sdfrmv
@endlocal 
