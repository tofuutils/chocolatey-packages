$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.3.0/tenv_v4.3.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.3.0/tenv_v4.3.0_Windows_x86_64.zip'
$checksum = 'b093af15bb95ba8a64f101e5eeeab4c918f98b9a5ec02e1637a887e02999a5e8'
$checksum64 = '7d27b8a00a237edfb88383479070b3f4951f9b974013653223242a85ca0dbc37'

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
