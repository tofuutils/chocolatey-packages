$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.8/tenv_v2.0.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.8/tenv_v2.0.8_Windows_x86_64.zip'
$checksum = '3423f69193d8635fec87fc6bf20a7f1a8ecd2df3243fa6e2d158a1c269dcc8b8'
$checksum64 = 'de6b146117eb59bd5dd74010065efaa1ebea04e3a1a9912a723a28e06ab6328d'

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
