
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.1.3-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '5af7b970ca18b39567d41e704bd2d5c0b6ef2683989c98520c108206357b407a'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
