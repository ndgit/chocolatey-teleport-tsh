
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://cdn.teleport.dev/teleport-v11.2.2-windows-amd64-bin.zip'
$options = 
@{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9';
  }
}

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  softwareName   = 'teleport-tsh*'
  checksum64     = '4d0691e7c52250e98f8592456cf51f017c2904f83ddc786beac9d60e61e96759'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs -Options $options
