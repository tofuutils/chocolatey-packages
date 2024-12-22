$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.0.0/tenv_v4.0.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.0.0/tenv_v4.0.0_Windows_x86_64.zip'
$checksum = '2a17929953b19b08bcc7bd8ad8c0cd81c7ef2901d3736dbf81e175237002f2f4'
$checksum64 = 'aca31bba1294d26611aa9696a2335547a12257bb3bc94125b8167cc7131b3c1e'

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
