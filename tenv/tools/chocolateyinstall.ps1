$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v2.7.8/tenv_v2.7.8_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v2.7.8/tenv_v2.7.8_Windows_x86_64.zip'
$checksum = '6bba1084b99ecca80598e5ef13b5cb44c7732861b94e223a9a506d45623c02cf'
$checksum64 = 'df649dd0fe599188f405eb75499d77a864368622ac2f8f009e26703ea4520c2a'

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
