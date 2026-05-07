$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.12.1/tenv_v4.12.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.12.1/tenv_v4.12.1_Windows_x86_64.zip'
$checksum = '75f687e5af571b22bb6ce3e3f9ff9e4f0fac6a1df658483e50a9c1a6e8cad389'
$checksum64 = '39aacc5fee1f380cff070a94f066739022c4c2a3c5adb03b9d3aea451401658d'

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
