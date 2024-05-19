$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.2/tenv_v1.11.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.2/tenv_v1.11.2_Windows_x86_64.zip'
$checksum = '495ae970f141e46e87d512b994d135a2e8b0224f511800f42b9e0e19426cacdf'
$checksum64 = '52b2222808a7c8a2f0bd693294166892ece9aff06c859f606cbb6ef65a71ea88'

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
