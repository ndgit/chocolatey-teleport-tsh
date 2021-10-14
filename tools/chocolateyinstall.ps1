
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.2.1-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'ef8dbb85cf31327e36ab70b6c4737b18f0ebc4ecd6a9699b2222ab1b41729406'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
