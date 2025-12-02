$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.9.0/tenv_v4.9.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.9.0/tenv_v4.9.0_Windows_x86_64.zip'
$checksum = '3bac79ced4f201cf805b26eaa8ccad8bd9e05b1f2d0b3079b755a401b5f49f00'
$checksum64 = '2b798e4155478425be2c07a8ec857dd31c66fe418f20f8fc9cac4b4a5cf91fe2'

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
