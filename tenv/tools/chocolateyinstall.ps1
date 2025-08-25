$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.20/tenv_v4.7.20_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.20/tenv_v4.7.20_Windows_x86_64.zip'
$checksum = 'baf40f43fffe0925bb5e25671ec45d86d028e969f5d9c66b5dbfa7d158966f4c'
$checksum64 = '9a4f2ccb27587ca228edf809130b9b709b4c64f3ed71771335009dc6e5dd7d4c'

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
