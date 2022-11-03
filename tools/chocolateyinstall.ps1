
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://cdn.teleport.dev/teleport-v10.3.6-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '7dc2f34a8784379a940e6eafff9d1a2a1713cdb8f9f2027483e2f7c5ece72a9d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
