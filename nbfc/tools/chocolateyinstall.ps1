$ErrorActionPreference = 'Stop';
$packageName= 'nbfc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hirschmann/nbfc/releases/download/1.6.3/NoteBookFanControl.1.6.3.setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs    = "-s"
  validExitCodes= @(0)
  softwareName  = 'NoteBook FanControl'
  checksum      = '5A42531F3A051DBD9664B1FF41A6CDBFBB34BC71A91DB719B8FE94829594EBAA'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















