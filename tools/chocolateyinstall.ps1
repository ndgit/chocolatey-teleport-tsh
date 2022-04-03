
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.3.6-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '2f4dc6f20f4dd72f2a8425971a713d121f052c419b455e6363ca7e890abdaa87'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
