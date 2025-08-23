$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.7.9/tenv_v4.7.9_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.7.9/tenv_v4.7.9_Windows_x86_64.zip'
$checksum = '0321f4f5008bd5d5abd3d5dd0c1d2af710dc448b928b9987d9edb525db121578'
$checksum64 = '89318da94f49c4beb84342d7003a3ee43483922a1d41303aa6caa647dab381eb'

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
