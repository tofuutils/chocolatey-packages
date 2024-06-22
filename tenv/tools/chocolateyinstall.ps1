$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.8/tenv_v2.1.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.8/tenv_v2.1.8_Windows_x86_64.zip'
$checksum = '81cd5d291c8f09c1636dce4f5bfa11759ff9cc044ad9d4f8b19d25985f402e40'
$checksum64 = '88696d92ea3974d7aa19819696cdf704ea81084a3b3b82bc291f45cf769d53b1'

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
