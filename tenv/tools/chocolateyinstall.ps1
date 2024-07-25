$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.6/tenv_v2.7.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.6/tenv_v2.7.6_Windows_x86_64.zip'
$checksum = '8eab63f01988479bbd397c11b454e6360d10fb7cc0c51c3d16db9b1587e9612e'
$checksum64 = '7602a53586da63dc4edb25759375d3a12e3f62b6cb54ac3a3431b81fbdca3a7a'

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
