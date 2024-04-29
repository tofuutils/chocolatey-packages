$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.9.3/tenv_v1.9.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.9.3/tenv_v1.9.3_Windows_x86_64.zip'
$checksum = '27920b30813a6a08cd54e5e533d592269f21b11eedc3367fba8096219fa1633c'
$checksum64 = '11554f6e27062580b7039dbfb33d01c644c7350df719dcedeb6494db68ef6f76'

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
