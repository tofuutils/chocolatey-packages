$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.8.3/tenv_v4.8.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.8.3/tenv_v4.8.3_Windows_x86_64.zip'
$checksum = 'b2f14d4fde7e96b08b7ddab9a60a9576dfc5ceeba597dbaf7149b314dd067056'
$checksum64 = '21f7f9dd41df9fbf20b5b10fb7f5ffad6ab4564a91fc7d1a02993c8f58c02d7c'

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
