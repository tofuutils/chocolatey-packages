$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.0/tenv_v1.11.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.0/tenv_v1.11.0_Windows_x86_64.zip'
$checksum = '769ebf2848996cc4334971738284fd0c46921fda4fd3806741717eed0e35d80e'
$checksum64 = '779e9701eab64a29e809a290171228a2213b9ee0ce952a8a582c560cfe0894db'

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
