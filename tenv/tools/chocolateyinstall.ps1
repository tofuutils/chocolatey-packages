$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.2/tenv_v3.2.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.2/tenv_v3.2.2_Windows_x86_64.zip'
$checksum = '9c3182a2a658242eac7b52cd0f0b6563518493287f1b9477f24227195a9c7b1e'
$checksum64 = 'c5d2b764caf233b6547d408cf6343d5621962c7370d7e17be5580d1f7a67612b'

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
