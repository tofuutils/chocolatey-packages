$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.2.1/tenv_v4.2.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.2.1/tenv_v4.2.1_Windows_x86_64.zip'
$checksum = 'e2a0fe07b0162434cd5e1ad4bcd5d85a33932576e33e5cccc5647621b5f7dc01'
$checksum64 = '8d258df0a0b28cc09d1dc25fddf738c5e522cd23435e149b0a14b9b1978da6a0'

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
