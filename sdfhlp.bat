@echo off
set varF=%1
set varS=%varF:~10,4%
type .\hlpdf_upd.txt | findstr /C:"%varS%" 1>nul
if errorlevel 1 (
  echo. %varS% got one - pattern not found from %1 to hlpdf_upd.txt
) else (
  echo. %varS% got zero - found pattern from %1 to hlpdf_upd.txt
  if exist .\hlpdf\hlpdfpor.txt%varS% (
	if exist .\hlpdfpor.txt (
		attrib hlpdfpor.txt -r
		del hlpdfpor.txt
	)
	copy /Y .\hlpdf\hlpdfpor.txt%varS% hlpdfpor.txt
  )  
  if exist .\hlpdf\hlpdfeng.txt%varS% (
	if exist .\hlpdfeng.txt (
		attrib hlpdfeng.txt -r
		del hlpdfeng.txt
	)
	copy /Y .\hlpdf\hlpdfeng.txt%varS% hlpdfeng.txt
  )
  if exist .\hlpdf\hlpdfspa.txt%varS% (
	if exist .\hlpdfspa.txt (
		attrib hlpdfspa.txt -r
		del hlpdfspa.txt
	)
	copy /Y .\hlpdf\hlpdfspa.txt%varS% hlpdfspa.txt
  )  
)