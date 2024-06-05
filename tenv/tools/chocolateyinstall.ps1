$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.11.7/tenv_v1.11.7_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.11.7/tenv_v1.11.7_Windows_x86_64.zip'
$checksum = '948402f3de61ad991859137f1ade5b8d3d90c2dedd70e188e4ba6c57839d8920'
$checksum64 = 'c14522fe2969b1ccf500916461459e029003cb498977021d20e7c128adeace63'

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
