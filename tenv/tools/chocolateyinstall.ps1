$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.14.8/tenv_v4.14.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.14.8/tenv_v4.14.8_Windows_x86_64.zip'
$checksum = '201ea1ce12dd681db1c143a378578f7d7c57603dca8d2706f665ccf00185a357'
$checksum64 = '6bafb4e2ccb4498b47659b8b39a0a644f44985fc63641fd2e43a1d12b89c7882'

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
