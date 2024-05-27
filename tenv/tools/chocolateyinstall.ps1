$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.6/tenv_v1.11.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.6/tenv_v1.11.6_Windows_x86_64.zip'
$checksum = 'c82ad62b3cef190014c47c3e8a9906e0b659161490099a43478e8bb5b47ff74f'
$checksum64 = 'c73e708540efa54e00ab457b2856a645e5fa37585132a611211edde1d05bf003'

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
