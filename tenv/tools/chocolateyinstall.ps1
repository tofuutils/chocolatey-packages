$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.12.0/tenv_v4.12.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.12.0/tenv_v4.12.0_Windows_x86_64.zip'
$checksum = '35723cdc525da2d02acd235160c59dd894e1997d3fdb1ee8f37c63c2ca15ea5b'
$checksum64 = 'c43feb0daaa68c4fee893cc9c90b094387bca428c49caa7a4f307fdc1ec1eb33'

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
