$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v3.2.11/tenv_v3.2.11_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v3.2.11/tenv_v3.2.11_Windows_x86_64.zip'
$checksum = '2419bf21ea62f5ee76dea920d4ff8ebe010fd2a7b7e48ed432d2596badf7135e'
$checksum64 = '1dce08748bfb9247e2f3728c3eca768cc3798b897ab32b4773cdcb39a12157bd'

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
