$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.9/tenv_v2.7.9_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.9/tenv_v2.7.9_Windows_x86_64.zip'
$checksum = '9f25c3d2fe09a6ee05d0da26f2fd8308b06ec1e747d48d62b78deb734f57070a'
$checksum64 = '6c81f35d85ca88c7c9c9dc4690a602691f6e5c9208137343e13c30e58d53b266'

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
