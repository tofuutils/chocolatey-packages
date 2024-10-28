$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.9/tenv_v3.2.9_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.9/tenv_v3.2.9_Windows_x86_64.zip'
$checksum = 'a2c1ba7f540b1f1132ba07b0d002aed4038f5adf500c873864ae6222fe0064e2'
$checksum64 = 'a21e315432f6363a593f6266397b4385d1d1b4c1c3d0cf50e82d2c59bfa2dead'

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
