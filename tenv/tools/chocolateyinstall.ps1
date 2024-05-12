$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.10.2/tenv_v1.10.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.10.2/tenv_v1.10.2_Windows_x86_64.zip'
$checksum = '296396f93db844689a47a4226f140471a4898643937958891b3aeea058b81e8d'
$checksum64 = '581b47a5d63b2b84846279a1ca3707281a40746c87a8ff8a825d98d0b2bba814'

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
