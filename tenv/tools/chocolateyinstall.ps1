$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.15.1/tenv_v4.15.1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.15.1/tenv_v4.15.1_Windows_x86_64.zip'
$checksum = '1bdf142f78e07bbbf0878ec0efcf960da49b9724a8d45030ec43fcc417d82b12'
$checksum64 = 'ec05686751aed00b97cda73e8b6c7a7386fc3110c2f312505c6e2762e1978556'

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
