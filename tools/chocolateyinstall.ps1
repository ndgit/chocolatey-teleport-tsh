
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://get.gravitational.com/teleport-v8.0.1-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = '53f14a362332a5bc14ba4901177f7b303fe9fec7efe5e5914db80bc386ede483'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
