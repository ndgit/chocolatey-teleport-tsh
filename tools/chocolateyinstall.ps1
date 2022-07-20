
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.0.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '2005892aa4d17597d6eb0f1ad990714226ce0bff16057afb84fa3a69575f995b'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
