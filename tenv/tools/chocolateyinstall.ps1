$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.9.4/tenv_v1.9.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.9.4/tenv_v1.9.4_Windows_x86_64.zip'
$checksum = '755b2a2e15bf0482ce92d742ffe4b22f410821edd3ef6b33b83215f44f8c240c'
$checksum64 = 'de7e5dba902d8f8c610d4ff00fafd60eb3b389f41f5fd3c65fdfe45556f9c062'

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
