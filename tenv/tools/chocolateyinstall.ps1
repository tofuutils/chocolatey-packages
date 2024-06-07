$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.1/tenv_v2.0.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.1/tenv_v2.0.1_Windows_x86_64.zip'
$checksum = 'f126f30d1448485b4ef144ee793c20da2f44935b75628d03809c467fed3be349'
$checksum64 = 'bda2da986e7714a74093712bc390a0c9039f94d57a8caffa7d2b7af560f33b45'

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
