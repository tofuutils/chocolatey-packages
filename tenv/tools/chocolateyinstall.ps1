$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.4.0/tenv_v2.4.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.4.0/tenv_v2.4.0_Windows_x86_64.zip'
$checksum = 'adb5b5c84b46ba08fe1f402ed05d4eba1489c3928d7cc87eb346cf14ad4ecf1a'
$checksum64 = '68e6a9dca20bb3b67f67a1524029e8e32cbf76c18bbba140952dc597725cab59'

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
