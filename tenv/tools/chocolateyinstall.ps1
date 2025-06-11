$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.5/tenv_v4.7.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.5/tenv_v4.7.5_Windows_x86_64.zip'
$checksum = 'c6e39bce7cb89d6f778480dc97a467c5d52e5e8768620220ba76085f374954fb'
$checksum64 = 'c106b51ea0490e32559b0ac35ed41a3d13fbf616bac74d2b1f97ca9a7c470eed'

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
