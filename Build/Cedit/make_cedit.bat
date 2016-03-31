@echo off

:: setup compiler environment
cd ..\..\Source\CEdit
if exist temp rmdir /s /q temp
mkdir temp

set KWDIR=..\..\Utilities\keyword
set SDIR=.\
set BINDIR=..\..\Utilities\for_bundle\Bin

Title Building cedit for 64 bit Windows

@echo Add repository info to CEdit source
call %KWDIR%\expand_file.bat %SDIR% %SDIR%About.vb

@echo Compile VB resources
"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools\resgen.exe" /useSourcePath /r:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.C1Report.4.dll" /r:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1FlexGrid.4.dll" /r:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Report.4.dll" /r:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1ReportDesigner.4.dll" /r:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Sizer.4.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\Microsoft.VisualBasic.dll" /r:C:\Users\rpeacoc\cfastlocal\Utilities\for_bundle\Bin\NPlot.dll /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Configuration.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Core.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.OracleClient.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Design.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.Design.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Web.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.DataVisualization.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.dll" /r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Xml.dll" /compile About.resx,temp\CEdit.About.resources CEdit.resx,temp\CEdit.CeditMain.resources InsertData.resx,temp\CEdit.InsertData.resources "My Project\Resources.resx",temp\CEdit.Resources.resources RunModel.resx,temp\CEdit.RunModel.resources t2fire.resx,temp\CEdit.t2Fire.resources UpdateDataFiles.resx,temp\CEdit.UpdateInputFiles.resources "User Units.resx",temp\CEdit.User_Units.resources ViewFile.resx,temp\CEdit.ViewFile.resources

@echo Update licenses
"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools\LC.exe" /target:CEdit.exe /complist:"My Project\licenses.licx" /outdir:temp /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.C1Report.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1FlexGrid.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Report.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1ReportDesigner.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Sizer.4.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\Microsoft.VisualBasic.dll" /i:C:\Users\rpeacoc\cfastlocal\Utilities\for_bundle\Bin\NPlot.dll /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Configuration.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Core.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.OracleClient.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Design.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.Design.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Web.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.DataVisualization.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Xml.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.BarCode.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.4.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\ReachFramework.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\WindowsBase.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\PresentationCore.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Document.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1DX.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.ImportServices.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.C1Pdf.4.dll" /i:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.C1Zip.4.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.ServiceModel.dll" /i:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Security.dll"

@echo Compile code
"C:\Program Files (x86)\MSBuild\14.0\bin\vbc.exe" /noconfig /baseaddress:11000000 /imports:Microsoft.VisualBasic,System,System.Collections,System.Data,System.Diagnostics,System.Drawing,System.Windows.Forms /optioncompare:Binary /optionexplicit+ /optionstrict:custom /nowarn:42016,42017,42018,42019,42032,42353,42354,42355 /nostdlib /platform:x86 /removeintchecks- /rootnamespace:CEdit /sdkpath:"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0" /preferreduilang:en-US /highentropyva- /doc:temp\CEdit.xml /define:"CONFIG=\"Release\",TRACE=-1,_MyType=\"WindowsFormsWithCustomSubMain\",PLATFORM=\"AnyCPU\"" /reference:"C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.C1Report.4.dll","C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1FlexGrid.4.dll","C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Report.4.dll","C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1ReportDesigner.4.dll","C:\Program Files (x86)\ComponentOne\WinForms Edition\bin\v4.0\C1.Win.C1Sizer.4.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\Microsoft.VisualBasic.dll",C:\Users\rpeacoc\cfastlocal\Utilities\for_bundle\Bin\NPlot.dll,"C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Configuration.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Core.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Data.OracleClient.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Design.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.Design.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Drawing.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Web.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.DataVisualization.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Windows.Forms.dll","C:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0\System.Xml.dll" /main:CEdit.CeditMain /debug- /nowin32manifest /optimize+ /out:temp\CEdit.exe /ruleset:"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Team Tools\Static Analysis Tools\\Rule Sets\MinimumRecommendedRules.ruleset" /resource:temp\CEdit.About.resources /resource:temp\CEdit.CeditMain.resources /resource:temp\CEdit.InsertData.resources /resource:temp\CEdit.Resources.resources /resource:temp\CEdit.RunModel.resources /resource:temp\CEdit.t2Fire.resources /resource:temp\CEdit.UpdateInputFiles.resources /resource:temp\CEdit.User_Units.resources /resource:temp\CEdit.ViewFile.resources /resource:temp\CEdit.exe.licenses /target:winexe /warnaserror- /utf8output /win32icon:ellogob.ico About.vb AssemblyInfo.vb CEdit.vb Compartment.vb Copy.vb CSVsheet.vb Data.vb Environment.vb Errors.vb Fire.vb InsertData.Designer.vb InsertData.vb IO.vb "My Project\Resources.Designer.vb" RecentFiles.vb RunModel.vb t2fire.Designer.vb t2fire.vb Target.vb "Thermal Properties.vb" UpdateDataFiles.Designer.vb UpdateDataFiles.vb UpdateGUI.vb "User Units.vb" Vent.vb ViewFile.Designer.vb ViewFile.vb Visual.vb "C:\Users\rpeacoc\AppData\Local\Temp\.NETFramework,Version=v4.0.AssemblyAttributes.vb"

@echo Copy executable to bin directory for bundle
copy temp\CEdit.exe ..\..\Utilities\for_bundle\Bin /Y

@echo Remove repository info from CEdit source
call %KWDIR%\contract_file.bat %SDIR%\About.vb

if x%arg1% == xbot goto skip2
pause
:skip2
cd ..\..\Build\Cedit

