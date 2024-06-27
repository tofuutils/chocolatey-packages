$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.2.1/tenv_v2.2.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.2.1/tenv_v2.2.1_Windows_x86_64.zip'
$checksum = '1ce684605e6dcffd938a89da11cdea82a6d723455ee852188c01507e9d55ee4e'
$checksum64 = '2b0143d630ba57a023396a5938cb7e8f268e2e8754c8e257ab23526d9d03aad8'

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
