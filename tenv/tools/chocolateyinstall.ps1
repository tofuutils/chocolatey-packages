$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.14.7/tenv_v4.14.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.14.7/tenv_v4.14.7_Windows_x86_64.zip'
$checksum = '94aac966c42db7b2b0ed136cfe8e7a3ade35adcf58bcb513383f2807208ff3b6'
$checksum64 = '61153d2f27228fb2283bdbd937f47f470d4892a1b751063cfee12127d19075aa'

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
