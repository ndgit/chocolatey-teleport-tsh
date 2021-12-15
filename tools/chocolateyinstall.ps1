
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.0.6-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '0fcb75371f1f2e654f7a13a4ef6cf54adb0c6b8a597de09d3ae61eb8ad6dadcd'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
