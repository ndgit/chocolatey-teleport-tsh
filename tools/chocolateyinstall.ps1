
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.2.6-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '394687c1f64cca1a0ddc17fb18be0e35ccf65b457ccbc92c3f689ea954d60938'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
