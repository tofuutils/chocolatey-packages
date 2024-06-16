$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.0/tenv_v2.1.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.0/tenv_v2.1.0_Windows_x86_64.zip'
$checksum = 'bb4e2710c65b6861c05daf9a8a204facaf1e30d874b8a1df821187fa2d9271cf'
$checksum64 = 'e27b36cd756e726f7d4708fad779efc82d746bd96ac1cc74cb6eacea2dd0d644'

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
