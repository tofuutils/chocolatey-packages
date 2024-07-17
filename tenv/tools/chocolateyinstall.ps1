$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.6.1/tenv_v2.6.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.6.1/tenv_v2.6.1_Windows_x86_64.zip'
$checksum = 'e2af51fa810a4726a5ca9df1b63eb6c5368e3ea3afca12117933aa91a8572739'
$checksum64 = '85290424671c6e2374a4c1f249937e6e1546bd3f81bcfda8acef74fc2e414103'

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
