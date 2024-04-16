$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.7.1/tenv_v1.7.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.7.1/tenv_v1.7.1_Windows_x86_64.zip'
$checksum = 'cc5be2ab272332a8e6e82ec52d1ac6c2075b35c099235ed47618dc8f48c4b2b7'
$checksum64 = '5381da7b44124bcd0074d118826ff583355d2a43cb4c1719bc05e409781ba841'

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
