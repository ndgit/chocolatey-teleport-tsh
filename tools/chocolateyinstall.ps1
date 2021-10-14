
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v7.3.0-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'c4b90442eb6328d9d85cee51aff361fc5bd7116742108ddaa2733f4ca7792036'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
