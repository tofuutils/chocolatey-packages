$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.7/tenv_v4.16.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.7/tenv_v4.16.7_Windows_x86_64.zip'
$checksum = '536d147f8532e9256efaa924cd3fc0ed8d3549e3c01eafae6eb6372b7a26f251'
$checksum64 = '008e636d0dd948652aa5fb1fe4c42a533f8f9505153b99d4abf99cb1ab091255'

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
