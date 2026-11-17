$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.9/tenv_v4.16.9_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.9/tenv_v4.16.9_Windows_x86_64.zip'
$checksum = '826d61804eed67bfb243ae54b065e71b551850d9e645f19dbc134b5c58fdb49e'
$checksum64 = 'ee08dc687e3e97c7ef493a6a6da53b48acfa67f0589e227aee2d3f471bd188c9'

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
