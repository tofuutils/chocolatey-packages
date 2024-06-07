$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.2/tenv_v2.0.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.2/tenv_v2.0.2_Windows_x86_64.zip'
$checksum = '2af0783bb9e1786ff9579e36f8aad4091d764f1b9e2118d27a9f12c247a43532'
$checksum64 = 'd8ef1818fc4dd739c1976859cedcfb439f64033fe18edb2df743d6441176d0d8'

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
