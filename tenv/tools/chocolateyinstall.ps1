$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.0/tenv_v4.7.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.0/tenv_v4.7.0_Windows_x86_64.zip'
$checksum = '9007015542cfcc8ab16f6ede7298de4c01d1b0e39aa1b48da33f69c5f2e518e3'
$checksum64 = '3087318799648c114e7956252607f2b51bb8b05477ea0a44a7b3439330429726'

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
