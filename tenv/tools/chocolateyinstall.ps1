$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.7/tenv_v2.0.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.7/tenv_v2.0.7_Windows_x86_64.zip'
$checksum = '67d6f720b507a65185946e8afb29926631ddb6222cce3435c0a90764d7d60ffa'
$checksum64 = 'dceb5613eb00026f0fc06e2e275c4e06c7c0357b933dff4b53aee0265a6d3f0e'

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
