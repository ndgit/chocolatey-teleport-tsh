
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.2.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '983fd6767456676894f66f54c5da5cea953d17aa36fe9e659b2ce0a135d226d5'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
