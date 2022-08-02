
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.1.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'a6047f54bc4da0e9ee02269ca67d41873b7150ac44dc60cb053fdd285860904d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
