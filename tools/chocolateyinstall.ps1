
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.1.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'd203a5e473aebbb28ad948254ad9d024c644b7c562021ad3c6182ed245b4f49d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
