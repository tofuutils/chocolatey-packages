$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.1/tenv_v1.11.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.1/tenv_v1.11.1_Windows_x86_64.zip'
$checksum = '44b6360b8281b0c4896309190b718275ea893a7d5d36be8ae115b52252dbabc4'
$checksum64 = '6ed081639082501f2ed76b26eec406e426102e3bcb1d5dad865be5cf2240ff1e'

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
