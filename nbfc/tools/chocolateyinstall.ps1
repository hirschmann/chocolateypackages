$ErrorActionPreference = 'Stop';
$packageName= 'nbfc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hirschmann/nbfc/releases/download/1.5.0/NoteBookFanControl.1.5.0.setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs    = "-s"
  validExitCodes= @(0)
  softwareName  = 'NoteBook FanControl'
  checksum      = 'F6AA09331A6D501FC7754D4A584B9B07'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs

















