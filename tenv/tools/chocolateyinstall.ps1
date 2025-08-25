$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.21/tenv_v4.7.21_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.21/tenv_v4.7.21_Windows_x86_64.zip'
$checksum = '4c5e7fa5728632ebdf78b3f24a026bb01d6b6dde199ec578fcb24c2b12bb04c5'
$checksum64 = '8a9f570d89b5c5cbc57f45ba3cfd9910ad2c9eee854440c7672b7be04f947a03'

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
