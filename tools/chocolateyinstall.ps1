
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.3.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '8c5a666726c94c4fab8508e71ef4ac8147026e921d9badbd2fce8de82dd2e609'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
