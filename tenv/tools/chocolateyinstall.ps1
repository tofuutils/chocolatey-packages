$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.19/tenv_v4.7.19_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.19/tenv_v4.7.19_Windows_x86_64.zip'
$checksum = 'c9d951059f9021cf7ed6df99eec6f757832bd4a5e0c416a4cf345d838a4814bb'
$checksum64 = '459eef6cbd9c44692b2edc8300db1e3f33ff84a55d231e0a7c2d0d70923820c6'

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
