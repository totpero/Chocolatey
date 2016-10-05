$packageName = 'EyeLeo'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	$uninstaller = "C:\Program Files (x86)\EyeLeo\uninstall.exe"
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $uninstaller -validExitCodes $validExitCodes
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
}

