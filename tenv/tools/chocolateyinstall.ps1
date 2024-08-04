$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.0.0/tenv_v3.0.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.0.0/tenv_v3.0.0_Windows_x86_64.zip'
$checksum = 'bd4fcb1f632ae82134d9a99179c26e51fe5360badc016f1cee87b2ca1d04283d'
$checksum64 = '959a3e45c81f628cb700f5bd3ccb28ea3b9c99abf73802f42ec517c7287bb1f6'

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
