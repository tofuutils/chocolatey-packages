$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.1.0/tenv_v4.1.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.1.0/tenv_v4.1.0_Windows_x86_64.zip'
$checksum = 'e0f85ea4e558f0d3f876e1812f8e430fdc191d4777969b4a22597a5dae88aa73'
$checksum64 = '1d79047fcfda447febb06147f7e7946464e3919811f975cba3d8295c6f1bf174'

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
