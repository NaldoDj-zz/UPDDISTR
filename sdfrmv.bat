@setlocal enableextensions enabledelayedexpansion
@echo off

	if exist .\sxsbra (
		attrib sxsbra* +r /s /d
    )

	if exist .\hlp (
		attrib hlp* +r /s /d
    )

	if exist .\mzp (
		attrib .\mzp* +r /s /d
		attrib .\mzp\*mzp* +r /s /d
    )

	if exist .\sdfrmv.bat (
		attrib sdfrmv.bat +r /s /d
    )

	if exist .\sx2_unq (
		attrib sx2_unq* +r /s /d
		attrib sx2.unq* +r /s /d
    )

	if exist .\sdfbra (
		attrib sdfbra* +r /s /d
    )

	if exist .\hlpdf (
		attrib hlpdfpor* +r /s /d
    )
	
	if exist .\sx2.unq (
		attrib sx2.unq -r
	)

	if exist .\sdfbra.txt (
		attrib sdfbra.txt -r
	)

	if exist .\hlpdfpor.txt (
		attrib hlpdfpor.txt -r
	)    

	if exist .\hlpdfspa.txt (
		attrib hlpdfspa.txt -r
	)    

	if exist .\hlpdfeng.txt (
		attrib hlpdfeng.txt -r
	)    
	
    del *.* /s /q
    
    if exist .\ctreeint (
        rmdir ctreeint /s /q
    )	
	if exist .\refedict (
        rmdir refedict /s /q
    )	
    if exist .\six1.idx (
        rmdir six1.idx /s /q
    )
    if exist .\sx11.idx (
        rmdir sx11.idx /s /q
    )
    if exist .\sx12.idx (
        rmdir sx12.idx /s /q
    )
    if exist .\sx13.idx (
        rmdir sx13.idx /s /q
    )
    if exist .\sx21.idx (
        rmdir sx21.idx /s /q
    )
    if exist .\sx31.idx (
        rmdir sx31.idx /s /q
    )
    if exist .\sx32.idx (
        rmdir sx32.idx /s /q
    )
    if exist .\sx33.idx (
        rmdir sx33.idx /s /q
    )
    if exist .\sx34.idx (
        rmdir sx34.idx /s /q
    )
    if exist .\sx61.idx (
        rmdir sx61.idx /s /q
    )
    if exist .\sx71.idx (
        rmdir sx71.idx /s /q
    )
    if exist .\sx91.idx (
        rmdir sx91.idx /s /q
    )
    if exist .\sx92.idx (
        rmdir sx92.idx /s /q
    )
    if exist .\sxa1.idx (
        rmdir sxa1.idx /s /q
    )
    if exist .\sxb1.idx (
        rmdir sxb1.idx /s /q
    )
    if exist .\sxg1.idx (
        rmdir sxg1.idx /s /q
    )

	if exist .\xxa1.idx (
        rmdir xxa1.idx /s /q
    )
	
    del ..\..\..\..\mpup* /s /q
    
    if not [%1%]==[] (
        
        if exist .\sdfbra\%1% (
            
            copy /Y .\sdfbra\%1% sdfbra.txt
            
            if exist .\hlpdf_upd.txt (
                call sdfhlp.bat %1
            )
            
            if exist .\sx2.unq_upd.txt (
                call sdfunq.bat %1
            )
            
        ) 
        
    )

@endlocal