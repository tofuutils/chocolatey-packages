$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.0.1/tenv_v4.0.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.0.1/tenv_v4.0.1_Windows_x86_64.zip'
$checksum = '13595dda2b82b9011f5341af0a3955ba6750e1f962f4db521f27642f25f6db41'
$checksum64 = '189eb20030870c9b2ad582d0da74fe45e25ef1d661ab08b5aef44d8582c9fac1'

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
