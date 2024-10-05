$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.4/tenv_v3.2.4_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.4/tenv_v3.2.4_Windows_x86_64.zip'
$checksum = '9acb384187652453fbe2b060662da767fceaa629977cc49ec574550c7a205e7b'
$checksum64 = '4c2091b6ef23e54f76f3afc9479eac41486a89bff27659c7b3ef988360bd129f'

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
