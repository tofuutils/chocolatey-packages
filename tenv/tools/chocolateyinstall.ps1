$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.3/tenv_v2.7.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.3/tenv_v2.7.3_Windows_x86_64.zip'
$checksum = 'e2a9bbac09b7a9fb6f3152892c93fc75ce2db696182c55d0fd70d73ea9a977bc'
$checksum64 = '97d50084120b48587b9107000585effdce9eb09b22246ac111d6b3282bb744a7'

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
