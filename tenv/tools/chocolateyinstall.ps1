$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.1.6/tenv_v2.1.6_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.1.6/tenv_v2.1.6_Windows_x86_64.zip'
$checksum = '8eddfa52a80da92234951f68c82266c7f00b91dafb096562101ff0909fdcad5c'
$checksum64 = '0afd6a6fc7156bee9e60b6601e1357247bb5ae039a99db8785bed9277c036092'

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
