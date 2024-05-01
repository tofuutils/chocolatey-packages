$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.10.0/tenv_v1.10.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.10.0/tenv_v1.10.0_Windows_x86_64.zip'
$checksum = 'f7f437a4132aec0c86b4e5abe78181a39c25e8d24b09b1686d1b2394d8cf327f'
$checksum64 = '76790d882652ff05af9bc7eff558406e0ea810ea1cc96afffa67cb8de4057943'

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
