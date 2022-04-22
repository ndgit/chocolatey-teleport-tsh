
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.1.0-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '5cdf13ce44a66239ab78ba98fd3a3ab7ceda3d26975b6f91b8172a053c42f8ad'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
