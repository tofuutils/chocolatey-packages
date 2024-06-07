$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.3/tenv_v2.0.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.3/tenv_v2.0.3_Windows_x86_64.zip'
$checksum = '99ef4e9d35c5add34761d14dbeb99a7b8ef2e4a04fbabc15412d5d5d82f335c4'
$checksum64 = '2482b7b2212d516bc88c93ab3b554aea064e7b509a6b9fd75b89e8ec069e342a'

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
