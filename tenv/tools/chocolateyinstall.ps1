$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.2.0/tenv_v2.2.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.2.0/tenv_v2.2.0_Windows_x86_64.zip'
$checksum = '3ef947ac8a1a7a14832b7c28f8a48481c6cb51370dd049aed11d43d61d61f2d8'
$checksum64 = 'a919ac8ba52f233b03e1a1f2009b52c89f4a42a968f5b7e2254c4d7e1ac9953a'

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
