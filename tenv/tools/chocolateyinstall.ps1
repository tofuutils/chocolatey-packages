$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.9.1/tenv_v4.9.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.9.1/tenv_v4.9.1_Windows_x86_64.zip'
$checksum = '0a04378ca28c420b25f8793acb5e51dcc5cbf9e8146f15811ee0cc2a35567346'
$checksum64 = 'a2cf12fae0a70e7a7b265327f689674c7d0f56fd173ba316bd255bc03e458f34'

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
