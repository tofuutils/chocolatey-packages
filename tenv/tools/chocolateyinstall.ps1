$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.6/tenv_v4.7.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.6/tenv_v4.7.6_Windows_x86_64.zip'
$checksum = '6812e0dfe1fe2ae94717310b5a26ccf2bdbbf949fbab5b365e104a3bf1ea69fd'
$checksum64 = 'c6637fbac9b9760fcba620a7d42a70aa1b99e79fc69fb743b4b9e0ea10c2aae0'

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
