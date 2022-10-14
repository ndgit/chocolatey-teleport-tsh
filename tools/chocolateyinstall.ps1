
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://cdn.teleport.dev/teleport-v10.3.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '1a82124c1bac03c6c73abe4764a2ae701fb888ea41eab4520624149dcae008e0'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
