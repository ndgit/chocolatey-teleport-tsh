
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.3.8-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '492715576bd74bdee6ab8dea13b7b7655fff9bafd6e9d64b78fb2440a026d4a6'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
