$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.1/tenv_v4.7.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.1/tenv_v4.7.1_Windows_x86_64.zip'
$checksum = ''
$checksum64 = ''

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
