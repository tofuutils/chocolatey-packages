$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.8/tenv_v4.7.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.8/tenv_v4.7.8_Windows_x86_64.zip'
$checksum = '2154c0e088232dce519884a296cef82764e5740dc3592de0bd4f5e03bc882ec5'
$checksum64 = 'bc2510634d7cb340fbd1e80f5e0718f9f71a33d1d8ae529c60f90f3fa4fa73da'

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
