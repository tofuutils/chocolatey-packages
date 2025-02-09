$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.2.0/tenv_v4.2.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.2.0/tenv_v4.2.0_Windows_x86_64.zip'
$checksum = '19fd65a056eb7f6e554f5193becf7d606c46a30d978cd5355b488940f9b13e80'
$checksum64 = '5eb3a4b7371c8257e4d82d09daedd51035aae612dbf838e7569a1c96c329d021'

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
