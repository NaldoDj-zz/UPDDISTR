@echo off
set varF=%1
set varS=%varF:~10,4%
type .\sx2.unq_upd.txt | findstr /C:"%varS%" 1>nul
if errorlevel 1 (
  echo. %varS% got one - pattern not found from %1 to sx2.unq_upd.txt
) else (
  echo. %varS% got zero - found pattern from %1 to sx2.unq_upd.txt 
  if exist .\sx2_unq\sx2.unq%varS% (
	if exist .\sx2.unq (
		attrib sx2.unq -r
		del sx2.unq
	)
	copy /Y .\sx2_unq\sx2.unq%varS% sx2.unq
  )  
)