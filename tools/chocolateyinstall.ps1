
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v9.3.7-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '4b978da4f3d5fd7508add28019abcbc7dfec208d729ebb461e39291a4a9066bf'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
