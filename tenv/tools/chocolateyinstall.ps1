$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.10/tenv_v3.2.10_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.10/tenv_v3.2.10_Windows_x86_64.zip'
$checksum = 'ef8df1d8d62f070c6818bf658f7347f39e6bd46df1ae843fd2dd36b9c83f0b9e'
$checksum64 = '465955e63c32730186ac4667950c28072fde33ea39941a9b84306440e6a43b99'

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
