$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.4/tenv_v2.0.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.4/tenv_v2.0.4_Windows_x86_64.zip'
$checksum = '2f0d71faaa4221ba3f9e415197ea2cdf1167621b8851f743b3aa8eb5f42797c4'
$checksum64 = '99f5b42a8bf9b0cb5b0e7e8f9477daf0e3d875a0b1732021abba74c254365be3'

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
