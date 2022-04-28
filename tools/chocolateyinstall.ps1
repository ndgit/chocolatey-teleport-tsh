
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.1.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '4ac1706a488abd420f49c7a7450818da68d74ba753d5f5d5bc6053dd3a796a3f'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
