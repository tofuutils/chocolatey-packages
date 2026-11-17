$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.6/tenv_v4.16.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.6/tenv_v4.16.6_Windows_x86_64.zip'
$checksum = 'f86404949cbdd8146383257c5c32f3a08e1fffcc449cfefc12ebde41579124b1'
$checksum64 = 'd2dafcefd5ff82b6212466228fd6bc05c783a8a3088bf5f4870828e4fbba497f'

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
