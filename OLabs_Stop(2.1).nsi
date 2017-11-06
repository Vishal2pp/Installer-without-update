OutFile "OLabs_Stop.exe"
;Header Files
!include MUI.nsh
!include MUI2.nsh
BrandingText "OLabs Install System"
!define MUI_ICON "D:\Installer without update\CodeToCompile\Icons\stop.ico"
!define SetTitleBar "OLabs Shutdown"
Caption "OLabs Shutdown"
!define MUI_PAGE_HEADER_TEXT "Shuting Down OLabs"
!define MUI_PAGE_HEADER_SUBTEXT "Please wait while Servers are being stopped."
!insertmacro MUI_PAGE_INSTFILES
 RequestExecutionLevel admin

Section

;Stopping servers
ExecWait "mycatalina_stop.bat"
ExecWait "mysql_stop.bat"
ExecWait "apache_stop.bat"

Sleep 3000
Exec "KillAll.bat"

SetAutoClose true

SectionEnd