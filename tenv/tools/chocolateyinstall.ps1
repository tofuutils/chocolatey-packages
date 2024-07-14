$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.5.0/tenv_v2.5.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.5.0/tenv_v2.5.0_Windows_x86_64.zip'
$checksum = 'e9430b0f227b8b0b92e40ae495484e2857863579db6e7839d46ab7973fcccb56'
$checksum64 = 'fbbf7c8c928bd39bebaacd0791820c6305534a23c7158fdde9b32235d96fa731'

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
