
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.1.2-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '780ff7ba1da41d69908b27b67e1d02b6f2d3ea8bef3de00c23613f6296fb6d99'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
