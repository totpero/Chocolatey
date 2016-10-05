$ErrorActionPreference = 'Stop'
 
$packageName = 'EyeLeo'
$url32       = 'http://eyeleo.com/files/EyeLeo_Installer_1.3.exe'
$checksum32  = '9C34086EE931216FA99FC495E65F91E7667D124B3B5CEC101EAD304547AD9337'
 
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'exe'
  url                    = $url32
  silentArgs             = '/S'
  checksum               = $checksum32
  checksumType           = 'sha256'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}
 
Install-ChocolateyPackage @packageArgs
