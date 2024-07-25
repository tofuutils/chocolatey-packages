$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.2/tenv_v2.7.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.2/tenv_v2.7.2_Windows_x86_64.zip'
$checksum = 'e6fa88582d03377e97ebadaee7d4777af783cdcff0669ee1f5f8a354a3ec675e'
$checksum64 = '1370c684fc762531dcf1db7439774ac5967db3e60b0909fab3e4b596adedc121'

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
