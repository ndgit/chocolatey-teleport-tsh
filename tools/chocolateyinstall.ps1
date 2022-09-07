
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.1.9-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '89486ca93fa59011d6a309638f4ae550abd01bbe6b81a00d66fed1376eb57e02'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
