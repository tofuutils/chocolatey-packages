$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.9.3/tenv_v4.9.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.9.3/tenv_v4.9.3_Windows_x86_64.zip'
$checksum = '8971621a81bb9c33adc1250b4887489c3673b75e54c2dc5f071f832893e276d2'
$checksum64 = '6436bc3d8423c1f20a7079ad436cacd00c05e8ed2bea1983287395acda6fe0ee'

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
