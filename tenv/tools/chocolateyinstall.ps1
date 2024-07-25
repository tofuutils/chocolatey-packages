$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.7/tenv_v2.7.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.7/tenv_v2.7.7_Windows_x86_64.zip'
$checksum = '03dfc4a1c83045b6707f4dc081667452cfac3c60388d373f4c2a772b5fdec56f'
$checksum64 = '4765af07f890c5143023fbeef3626b84e277396d32141e0140368df7a95ad744'

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
