$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.9.0/tenv_v1.9.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.9.0/tenv_v1.9.0_Windows_x86_64.zip'
$checksum = '014f41df01f3f3763c776f674b1d2e85fc7cdac589bd85de1af1b361b8871740'
$checksum64 = '68e4f8457265feb89714fb60d3c92db4a6ddf3401f1a8cb85b727d9801baf6b0'

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
