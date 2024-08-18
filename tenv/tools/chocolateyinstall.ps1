$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.1.0/tenv_v3.1.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.1.0/tenv_v3.1.0_Windows_x86_64.zip'
$checksum = '71aaa1d68ebe263f49658ad218d94f6eccc1ccb728dd731866034e480763facf'
$checksum64 = 'c67ec1899691eb70f229afec6578308db0cf4e3c31cd213c210fe4c3507b5d21'

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
