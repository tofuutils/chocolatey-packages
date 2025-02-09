$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.2.3/tenv_v4.2.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.2.3/tenv_v4.2.3_Windows_x86_64.zip'
$checksum = '8f735218375815b015b812b3bf73ac25db76e754ea0718d40312b8a36fb90836'
$checksum64 = '6e219d896b08963a18a10b17e0e83231546f98c21f368d8e43789c575b983ef3'

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
