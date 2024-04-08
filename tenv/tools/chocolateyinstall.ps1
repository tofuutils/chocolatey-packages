$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.7.0/tenv_v1.7.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.7.0/tenv_v1.7.0_Windows_x86_64.zip'
$checksum = '687eae6e12c80e66da0a2b7afe1db14ff2ed6bb184302dd99b8281d8798dccd2'
$checksum64 = 'a287e1a249eaaa6d07503aaa0ee8b6ef1070d8544573ce47f0bd1cce476aa116'

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
