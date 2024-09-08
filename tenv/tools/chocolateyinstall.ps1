$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.1/tenv_v3.2.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.1/tenv_v3.2.1_Windows_x86_64.zip'
$checksum = 'ce736acea51900315181e3fbdb24ae8591fd4166bed7e7fe666f3ea5c312038c'
$checksum64 = '15e887c8be448eb4f6e8ad06c126a98dbedb804add4c42e4fd7f15c87501b5a3'

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
