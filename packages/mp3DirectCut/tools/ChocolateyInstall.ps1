$ErrorActionPreference = 'Stop'
 
$packageName = 'mp3DirectCut'
$url32       = 'https://www.fosshub.com/mp3DirectCut.html/mp3DC222.exe'
$checksum32  = 'B8EAF5092D31B9EACF98C96CC2CEE63258C71C348334E0433CF540B19BBC50EB'
 
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
