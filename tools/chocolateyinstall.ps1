
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.3.3-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '3c169b4f915cbc4ca0f0286adf0b0553ff63196a0cf67bf5611082074a9cc1d1'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
