$ErrorActionPreference = 'Stop';
$packageName= 'nbfc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hirschmann/nbfc/releases/download/1.4.2/NoteBookFanControl.1.4.2.setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs    = "-s"
  validExitCodes= @(0)
  softwareName  = 'NoteBook FanControl'
  checksum      = '19D9A6A574390867B0E0C43C651A4FE0'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs

















