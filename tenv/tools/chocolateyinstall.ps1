$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.5/tenv_v2.1.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.5/tenv_v2.1.5_Windows_x86_64.zip'
$checksum = 'f688b0a9e03adc846b4f963361926b82909711aba85ca903b388b4bd09c1ed93'
$checksum64 = 'bcc8564fd66e824e9163359cad46c84619487f05fd3626523a732c275293b73c'

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
