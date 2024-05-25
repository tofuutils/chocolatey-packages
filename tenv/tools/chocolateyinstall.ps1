$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.5/tenv_v1.11.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.5/tenv_v1.11.5_Windows_x86_64.zip'
$checksum = '2a92f109272197119d688976f39d6f0b8329e2a7c41a4c33cace60d7c38d3199'
$checksum64 = 'dbd7b52a193fa290bf7eab1ea7e4cc2aeb8a44fe1c480b603a9c8881a8c0382b'

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
