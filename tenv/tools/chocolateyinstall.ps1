$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.5/tenv_v4.16.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.5/tenv_v4.16.5_Windows_x86_64.zip'
$checksum = '59d23205a001bbee3f1395ba043db34c83a1a44b621ccc9b3e9051cbc74f8167'
$checksum64 = '64c8df399c76a0fd1437b4c187547ae035f1f2e6a357ec11f486849de0c5aa06'

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
