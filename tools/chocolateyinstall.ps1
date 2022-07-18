
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.0.1-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '44f563e59ab9679fb951647ca2b401e9c8fddb41ff6557f56b38f778925d3dbc'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
