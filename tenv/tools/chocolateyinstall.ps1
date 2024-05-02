$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.10.1/tenv_v1.10.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.10.1/tenv_v1.10.1_Windows_x86_64.zip'
$checksum = '68a28eccadad3ba2ad542e89b22a6706bb37c2b9d81392469b63366479ac6866'
$checksum64 = '95c709be9bff1a6a483031660dd0d9b781f2be38873a6dd7c86d60782b90391c'

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
