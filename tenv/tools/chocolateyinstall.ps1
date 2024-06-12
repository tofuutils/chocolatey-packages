$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.5/tenv_v2.0.5_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.5/tenv_v2.0.5_Windows_x86_64.zip'
$checksum = 'd2b29efc1f7ad5ed86b7b14b83afb2cfbf13c77763a5cf073838f94385ab9ed9'
$checksum64 = 'a3d71184893630104fa57ed524560b18e03e11acf213ce60e29035ad68850e0e'

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
