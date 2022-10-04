
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.3.1-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '4a0b30169c408ce2569c25948f475263ff6338992462a2a03f32a91aa897c841'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
