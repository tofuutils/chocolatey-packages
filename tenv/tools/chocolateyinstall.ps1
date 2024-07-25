$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.5/tenv_v2.7.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.5/tenv_v2.7.5_Windows_x86_64.zip'
$checksum = '057856bda8f014662bbd986903aaae7d5e57e11ee994cd73d3bce7af40df0916'
$checksum64 = '231fa29aeb42d0989d5aa2afceb5ab2445c98dc9d24287e703a3ce6fbe75efc6'

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
