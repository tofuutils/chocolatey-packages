$ErrorActionPreference = 'Stop'

$url = 'https://github.com/tofuutils/tenv/releases/download/v4.8.0-alpha1/tenv_v4.8.0-alpha1_Windows_i386.zip'
$url64 = 'https://github.com/tofuutils/tenv/releases/download/v4.8.0-alpha1/tenv_v4.8.0-alpha1_Windows_x86_64.zip'
$checksum = '81aa9a297e75693dc48fd8072ca82640aa102b8098e6b10cf294933fe7b84e79'
$checksum64 = '193963af85ec63eff689c161391c603e63ed54c4ec8fa8c48bc7cefff270e960'

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
