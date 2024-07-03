$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.3.0/tenv_v2.3.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.3.0/tenv_v2.3.0_Windows_x86_64.zip'
$checksum = 'a1836a78ce24a2d36ad72891e184560a8c432e842929513d835c42e99de969e5'
$checksum64 = '1d83e9f2c9a0556fff0c905cce780545ce4a76aff7f606f1de5f2de76b3ea4c7'

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
