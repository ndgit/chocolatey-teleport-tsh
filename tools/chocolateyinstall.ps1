
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v10.3.5-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '3e50005aafd9b3ab72677b99c9d94b978828363a9bb87e9a380bc8923fd2f4e2'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
