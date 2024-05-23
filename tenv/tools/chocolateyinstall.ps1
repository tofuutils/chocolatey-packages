$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.4/tenv_v1.11.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.4/tenv_v1.11.4_Windows_x86_64.zip'
$checksum = 'a8cf7fc98e017c56613c51aefc43b7a87e3611672045f904593f8cc1415b7675'
$checksum64 = '38c3f61f74db41df5df7dd3b628db48abd374f2d1db93af5899836b25a0bed7f'

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
