$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.3/tenv_v1.11.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.3/tenv_v1.11.3_Windows_x86_64.zip'
$checksum = 'b2e3dc64c8f5830597c9943d44e7655235857beb7189db68156cac430fc1a710'
$checksum64 = 'a77973ade5dbb00b97c1d0d6e0d53f1faf337feee46950f381f5be9e9bdd1eef'

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
