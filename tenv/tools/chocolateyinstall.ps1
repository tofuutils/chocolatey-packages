$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.2.4/tenv_v4.2.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.2.4/tenv_v4.2.4_Windows_x86_64.zip'
$checksum = 'aebe8fbb32de25302a8ab76591dd096fbd9aab0cd0511040e2fe43124f9efcd0'
$checksum64 = '86e4214c3c3c3a59355466f7be3c06299ad50203ed30f12c0308700f904f9845'

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
