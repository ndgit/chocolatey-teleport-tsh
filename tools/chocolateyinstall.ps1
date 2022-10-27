
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://cdn.teleport.dev/teleport-v10.3.4-windows-amd64-bin.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  softwareName  = 'teleport-tsh*'
  checksum64    = 'faccee985e46c2d590a63ad5d5cf621cba3290a64e1a2df72d7054baa9a1cd8e'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
