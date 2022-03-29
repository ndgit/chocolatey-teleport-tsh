
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.3.5-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '9125ef4aaba5563bb9851eeff578d1a61f9de037516a27e496bdbb6c6d2a42ae'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
