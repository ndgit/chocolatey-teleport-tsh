
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.3.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'bac25c0567c7a58b1122d8f898d5a9a9ed0f92c80dfe14b70ad674947172b8b2'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
