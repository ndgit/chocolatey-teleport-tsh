
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.3.9-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'dc214fb0be447b12373f6c2565cd391bbe8d3a26cc48ac47f60eb3a5201ba571'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
