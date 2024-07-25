$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.4/tenv_v2.7.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.4/tenv_v2.7.4_Windows_x86_64.zip'
$checksum = '5b16f4628f0f501a29dfeba62a2ee471aa1f05033d011e66ef483a4bb38525ba'
$checksum64 = 'fddf6ffb3a76d2e4f06ef3bc26a2172608ab5c3d2f9c17353e4909ea391ae277'

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
