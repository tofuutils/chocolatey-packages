$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.16.4/tenv_v4.16.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.16.4/tenv_v4.16.4_Windows_x86_64.zip'
$checksum = '1b59ae83d56ffe4a9e1a67f34eb9a201cd4b830e38868e43c4b78f08a5c9bb59'
$checksum64 = '1665a20b712de3eb52658ef1f5d9cee92f191d29510b16071c5cdd76eb6f810c'

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
