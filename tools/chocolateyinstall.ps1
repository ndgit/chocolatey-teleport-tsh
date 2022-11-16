
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://cdn.teleport.dev/teleport-v11.0.3-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '7e463f224a1bdeb1f737276216b6a87dd9c786ab6f35d8a061e1666d954d0202'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
