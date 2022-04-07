
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.3.7-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '642dd9745437cfc2248f59d54c68fbe52087789df5d8cad0729e2719acff938e'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
