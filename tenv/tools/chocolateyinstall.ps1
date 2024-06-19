$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.7/tenv_v2.1.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.7/tenv_v2.1.7_Windows_x86_64.zip'
$checksum = '7e69804cfed8d6568e004ef729147f2a7540235c76c7b03503c72dd6c0aff1c7'
$checksum64 = '4a9ad05e36350b15782b3494dd54b6028d44f774cd118a2f048a16384475ca96'

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
