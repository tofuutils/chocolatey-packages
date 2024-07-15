$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.6.0/tenv_v2.6.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.6.0/tenv_v2.6.0_Windows_x86_64.zip'
$checksum = 'ab337de2d5202f014483f9e96688e59761f0ee14a96907b6e2623c9fc71266af'
$checksum64 = '5da7ba56e476b99dd6990bc1d45125eb4986014ebf9246cb152394cd9e5dbdc3'

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
