$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.6.2/tenv_v4.6.2_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.6.2/tenv_v4.6.2_Windows_x86_64.zip'
$checksum = 'd02506f817eed9252a54252e040a6dee5da5ffb564bfc983e1a2225111c3e6fd'
$checksum64 = '54bdb6812e52988b32e114bdff9d6c1aea0f679e79e1dbbdab2a62d5c3eae556'

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
