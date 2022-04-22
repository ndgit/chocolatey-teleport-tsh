
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.0.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '4a4f8b6bd5d5e7e8b04982a11cba7eb83c4d58856d82ac731c99333d644859e1'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
