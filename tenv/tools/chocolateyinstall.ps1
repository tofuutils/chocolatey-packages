$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.12.2/tenv_v4.12.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.12.2/tenv_v4.12.2_Windows_x86_64.zip'
$checksum = '585f23508ab9a506a74af12fb1fb805778c003f1029433237e17d3495420658a'
$checksum64 = 'fea4b419085270241f08d2d043f245c8ab5cf29c7d03168138bea07ea1486ee5'

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
