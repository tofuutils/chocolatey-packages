$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.9.2/tenv_v4.9.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.9.2/tenv_v4.9.2_Windows_x86_64.zip'
$checksum = '927309b4a1972742ef146534fd8312b12d67080478418e790dafc7a1609d6c8c'
$checksum64 = 'ffdc9ccfc248ca8bcbc241a47b658071a3a303e3b7dc4cbf9589ca6beb0ee9a3'

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
