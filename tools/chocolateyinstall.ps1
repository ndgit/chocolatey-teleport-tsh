
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.2.0-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'ef11d3c44a7cd8debae279d618be66b743fda23790fedcd1b473114b7a61a038'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
