$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.8/tenv_v4.16.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.8/tenv_v4.16.8_Windows_x86_64.zip'
$checksum = '34e3290006ee12ae6139d2c3534ecafafc5d196a622b3b05c5d237e56edc7fb0'
$checksum64 = '7a609dfa0ecd48cf38f82602d12380b9f7bb8d9a01ba05ba3211abf38bf92656'

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
