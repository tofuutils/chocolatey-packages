$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.0/tenv_v2.0.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.0/tenv_v2.0.0_Windows_x86_64.zip'
$checksum = 'b4a41f9e3190c2797018124f547e5548bcf84c7db9292b84b6da4e93d13055f7'
$checksum64 = 'd8a76cfeee0d57974e6bff03785370ecbb332c3ca4fabb5baaa1f0bcf4da1817'

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
