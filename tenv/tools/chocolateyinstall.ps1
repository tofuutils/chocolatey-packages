$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.0.6/tenv_v2.0.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.0.6/tenv_v2.0.6_Windows_x86_64.zip'
$checksum = '1e355c3931bf27b7e6b85daf87f45117b7ec4fe88404f87b0b1a23fbdfb79200'
$checksum64 = '89eb0e2db18b572368e8d7c4a3f6563c860d4d4bee4ff3c37880e5c428872f24'

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
