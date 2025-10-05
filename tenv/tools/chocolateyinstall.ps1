$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.8.0-beta1/tenv_v4.8.0-beta1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.8.0-beta1/tenv_v4.8.0-beta1_Windows_x86_64.zip'
$checksum = '4938abe30b12e705b3506a30e43156ba0dbb0a74123ebdd91490cb7b6eb28eb3'
$checksum64 = '029a54846a707e076e8ecd7e80997286ee669f52073ffb121b72d287652f7fe3'

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
