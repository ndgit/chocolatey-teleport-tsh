
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.0.0-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'c1f540b7abca76d09a7ae193f3e1a73755f3ba263af59f0db078ac865ed217c7'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
