$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v1.8.0/tenv_v1.8.0_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v1.8.0/tenv_v1.8.0_Windows_x86_64.zip'
$checksum = 'c692bbec8dcf686c24f8e47dd2a65ab24095b2429a16230261f815107015d8ec'
$checksum64 = 'c64376a589ee28488c3966aaf96e6ebc0804a53d909764ef3c48e61af715d7e6'

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
