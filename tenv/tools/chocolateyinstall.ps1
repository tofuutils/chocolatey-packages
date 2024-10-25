$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.8/tenv_v3.2.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.8/tenv_v3.2.8_Windows_x86_64.zip'
$checksum = '12d339cf8d9d67d0f81cdb12ac63e5a04fc96b3cc43d1bed9781ec86b5e31caa'
$checksum64 = 'a39959c053744ce16c5c8e2092cdd3cbda002fb5d6fb7f5b2267ca23b2064d25'

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
