$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.1/tenv_v2.1.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.1/tenv_v2.1.1_Windows_x86_64.zip'
$checksum = 'f8cbe3482a691262f9ba59168ba99f0efd27c14b70d0690e7daba352ccbc9559'
$checksum64 = '6bfd74ab1171b799de0daf4d908295739a4d1de0f2dbed87e465cba1a48b0e7f'

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
