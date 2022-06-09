
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.3.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '173a436048f55b17e1ba23bf6a4c72e7f26d0844f05bd030ba42b12cce18b9dc'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
