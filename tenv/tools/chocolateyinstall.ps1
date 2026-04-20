$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.11.1/tenv_v4.11.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.11.1/tenv_v4.11.1_Windows_x86_64.zip'
$checksum = 'a60fa7f674f08a20d4577ea6c0b64c906ab8202243a601c6dd22d61f6e5cdb3c'
$checksum64 = 'eb7249c78730a52213c97f5911ecdaf5b6dc0ea5a059f43875639b4bfa0247b1'

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
