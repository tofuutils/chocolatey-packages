$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.2.2/tenv_v4.2.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.2.2/tenv_v4.2.2_Windows_x86_64.zip'
$checksum = '64dc203bdaec32632b41cc888a0ad76197200b723006008839c34870aea3504b'
$checksum64 = '1a82277813e66f1ddae7a146c529be7fb9bf8daf4e8fb56fa0755419d03a5549'

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
