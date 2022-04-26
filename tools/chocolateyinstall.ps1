
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.1.1-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '5eeb8383cc86186bca653d9d7799fa9e081be418e50d803cc97c21de1024b7fa'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
