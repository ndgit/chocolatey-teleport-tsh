
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.3.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '55cce1a636f65f91f64aa2bcb27072fe43d48aadf1ca811dd108b7b4a14dc4a2'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
