$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.3/tenv_v3.2.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.3/tenv_v3.2.3_Windows_x86_64.zip'
$checksum = '2924d9c8e38ecb8dcee82ad72962b3f730b2dc9ebe0b8030769a99fb5ed8ca31'
$checksum64 = '41c177aad02407c77a9b3aef4e99974db1983ed8027c1e6a641eb244f2dd2d53'

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
