$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.19/tenv_v1.11.19_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.19/tenv_v1.11.19_Windows_x86_64.zip'
$checksum = 'd191a6b6b7135239301be0a3c6991685150c9f2911321adc1b461189c99c424b'
$checksum64 = '04d6cab3d6d6902c4beda8ac439eccab4879ca735a4c73fdef25648e838980f2'

$unzipLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageParams = @{
  PackageName   = "tenv"
  UnzipLocation = $unzipLocation
  Url           = $url
  Url64         = $url64
  Checksum      = $checksum
  Checksum64    = $checksum64
  ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams
