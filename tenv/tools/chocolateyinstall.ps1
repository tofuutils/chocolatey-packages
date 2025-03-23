$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.4.0/tenv_v4.4.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.4.0/tenv_v4.4.0_Windows_x86_64.zip'
$checksum = '0e19caf34f8c20aaff96626fe89f853568f42bbb26c9ebf0987f2f4bcf440f82'
$checksum64 = '97b2199bf73e91d1497d1e2e9e94a4afc46bbcf5d8fb05027ac5824a1ccaa662'

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
