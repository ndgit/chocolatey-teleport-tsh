
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.0.5-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '3712633938a21deac4b88a465c709cb82e7ba94c9dd03f8802dc5673f0941eb6'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
