$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.0.3/tenv_v4.0.3_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.0.3/tenv_v4.0.3_Windows_x86_64.zip'
$checksum = '47de47b86ff744f1006b0618fd7b739c33d9f0e073be3742d897ecb8815612d8'
$checksum64 = '3bbe39f73da0eca75db62467f0cbe5fc3820609326dd19510c5d01d256e19443'

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
