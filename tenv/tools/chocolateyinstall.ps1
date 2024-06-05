$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.8/tenv_v1.11.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.8/tenv_v1.11.8_Windows_x86_64.zip'
$checksum = '53cfe13bd547ad83dec6ed2a9ebc023997d1fff86045b03ecf4bd5ea6516d18d'
$checksum64 = '410df43fde351163630a054a5a6ec2c8a708df42ab36ac383496e28fe468d820'

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
