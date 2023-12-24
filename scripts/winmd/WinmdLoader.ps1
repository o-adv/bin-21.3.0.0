<# @aWinmdFile - physical path to the .winmd file to be read #>
<# @aMethod        - method to call from this script #>
param([string] $aWinmdFile, [string] $aMethod)

[string] $kReaderAssemblyPath = "../../../third-party/microsoft.cci/Microsoft.Cci.Helper.dll";

function GetActivatableClasses ([string]$aWinmdFile)
{
  return [Microsoft.Cci.Helper.PeReaderHelper]::LoadWinmdActivatableClassesAsXml($aWinmdFile);
}

try
{
  <# Load microsoft library for reading winmd files #>
  $asm = [System.Reflection.Assembly]::LoadFrom((Split-Path $script:MyInvocation.MyCommand.Path) + $kReaderAssemblyPath);
  $objectXmlFormat = &$aMethod $aWinmdFile;
  Write-Host $objectXmlFormat;
}
catch
{
  Write-Host $Error[0].Exception.Message;
  exit 11111;
}


# SIG # Begin signature block
# MII92gYJKoZIhvcNAQcCoII9yzCCPccCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCI9vs9onJcy0Oc
# wvdxm83AgnjRioffnwz6V+8wkqe8maCCInQwggXMMIIDtKADAgECAhBUmNLR1FsZ
# lUgTecgRwIeZMA0GCSqGSIb3DQEBDAUAMHcxCzAJBgNVBAYTAlVTMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xSDBGBgNVBAMTP01pY3Jvc29mdCBJZGVu
# dGl0eSBWZXJpZmljYXRpb24gUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAy
# MDAeFw0yMDA0MTYxODM2MTZaFw00NTA0MTYxODQ0NDBaMHcxCzAJBgNVBAYTAlVT
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xSDBGBgNVBAMTP01pY3Jv
# c29mdCBJZGVudGl0eSBWZXJpZmljYXRpb24gUm9vdCBDZXJ0aWZpY2F0ZSBBdXRo
# b3JpdHkgMjAyMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBALORKgeD
# Bmf9np3gx8C3pOZCBH8Ppttf+9Va10Wg+3cL8IDzpm1aTXlT2KCGhFdFIMeiVPvH
# or+Kx24186IVxC9O40qFlkkN/76Z2BT2vCcH7kKbK/ULkgbk/WkTZaiRcvKYhOuD
# PQ7k13ESSCHLDe32R0m3m/nJxxe2hE//uKya13NnSYXjhr03QNAlhtTetcJtYmrV
# qXi8LW9J+eVsFBT9FMfTZRY33stuvF4pjf1imxUs1gXmuYkyM6Nix9fWUmcIxC70
# ViueC4fM7Ke0pqrrBc0ZV6U6CwQnHJFnni1iLS8evtrAIMsEGcoz+4m+mOJyoHI1
# vnnhnINv5G0Xb5DzPQCGdTiO0OBJmrvb0/gwytVXiGhNctO/bX9x2P29Da6SZEi3
# W295JrXNm5UhhNHvDzI9e1eM80UHTHzgXhgONXaLbZ7LNnSrBfjgc10yVpRnlyUK
# xjU9lJfnwUSLgP3B+PR0GeUw9gb7IVc+BhyLaxWGJ0l7gpPKWeh1R+g/OPTHU3mg
# trTiXFHvvV84wRPmeAyVWi7FQFkozA8kwOy6CXcjmTimthzax7ogttc32H83rwjj
# O3HbbnMbfZlysOSGM1l0tRYAe1BtxoYT2v3EOYI9JACaYNq6lMAFUSw0rFCZE4e7
# swWAsk0wAly4JoNdtGNz764jlU9gKL431VulAgMBAAGjVDBSMA4GA1UdDwEB/wQE
# AwIBhjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTIftJqhSobyhmYBAcnz1AQ
# T2ioojAQBgkrBgEEAYI3FQEEAwIBADANBgkqhkiG9w0BAQwFAAOCAgEAr2rd5hnn
# LZRDGU7L6VCVZKUDkQKL4jaAOxWiUsIWGbZqWl10QzD0m/9gdAmxIR6QFm3FJI9c
# Zohj9E/MffISTEAQiwGf2qnIrvKVG8+dBetJPnSgaFvlVixlHIJ+U9pW2UYXeZJF
# xBA2CFIpF8svpvJ+1Gkkih6PsHMNzBxKq7Kq7aeRYwFkIqgyuH4yKLNncy2RtNwx
# AQv3Rwqm8ddK7VZgxCwIo3tAsLx0J1KH1r6I3TeKiW5niB31yV2g/rarOoDXGpc8
# FzYiQR6sTdWD5jw4vU8w6VSp07YEwzJ2YbuwGMUrGLPAgNW3lbBeUU0i/OxYqujY
# lLSlLu2S3ucYfCFX3VVj979tzR/SpncocMfiWzpbCNJbTsgAlrPhgzavhgplXHT2
# 6ux6anSg8Evu75SjrFDyh+3XOjCDyft9V77l4/hByuVkrrOj7FjshZrM77nq81YY
# uVxzmq/FdxeDWds3GhhyVKVB0rYjdaNDmuV3fJZ5t0GNv+zcgKCf0Xd1WF81E+Al
# GmcLfc4l+gcK5GEh2NQc5QfGNpn0ltDGFf5Ozdeui53bFv0ExpK91IjmqaOqu/dk
# ODtfzAzQNb50GQOmxapMomE2gj4d8yu8l13bS3g7LfU772Aj6PXsCyM2la+YZr9T
# 03u4aUoqlmZpxJTG9F9urJh4iIAGXKKy7aIwggbOMIIEtqADAgECAhMzAAC4wiCd
# paH8EYwDAAAAALjCMA0GCSqGSIb3DQEBDAUAMFoxCzAJBgNVBAYTAlVTMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKzApBgNVBAMTIk1pY3Jvc29mdCBJ
# RCBWZXJpZmllZCBDUyBBT0MgQ0EgMDEwHhcNMjMxMjE0MDc1MDMyWhcNMjMxMjE3
# MDc1MDMyWjBLMQswCQYDVQQGEwJSTzEQMA4GA1UEBxMHQ3JhaW92YTEUMBIGA1UE
# ChMLQ2FwaHlvbiBTUkwxFDASBgNVBAMTC0NhcGh5b24gU1JMMIIBojANBgkqhkiG
# 9w0BAQEFAAOCAY8AMIIBigKCAYEAlAWbeMMJ+wxRFQ45nca9Y9+IbQB65s/uEbka
# EGkSMt3ONYwXV2BXbriY1kig7U+nLgjYrxZap88ZuyRiZrnne+vNSMepnHfnw2N8
# bRncrhfkqrVxlyHr670hqpdK9lQKFXDFbJxh/LmuQqFg94xQtzGGIUTGIzzIxGOn
# RsLm815nWQw0Zo/SgxliaAjfiVWNEPJKJDkiTpQRLRVikUalsXvUC6s57+BrRQri
# 34fJeeabiQyZpBkeVmPBpY89v0c58FuFADQzh6SapLNMTj6QjtEs2jlCk7DencmF
# R1jjCOAmLzkLgQyia/moayrB7cmlCnJHyOZqpImXoUCZ5rPuMe6OppAyILsnaX5m
# Fd6yCwux56gZo4kP8Zw6RdaBzhltPOj4BoeloS49kiuhnXnivBfo5t+Q1w1h42GS
# 3YMpMBeed1z0QG2uSie9j893gTMkBxi1zYF7sATyu/BLCMLC52zljqv/nb/38e8e
# GX8sYVTXU5RDKk3eRnJ+pn9SBy5dAgMBAAGjggIaMIICFjAMBgNVHRMBAf8EAjAA
# MA4GA1UdDwEB/wQEAwIHgDA9BgNVHSUENjA0BgorBgEEAYI3YQEABggrBgEFBQcD
# AwYcKwYBBAGCN2GDoY/BNoG0pZl+goH440yB/YauXTAdBgNVHQ4EFgQUzpgewFZm
# /Fox2ZNb0S0Kyf4ajt4wHwYDVR0jBBgwFoAU6IPEM9fcnwycdpoKptTfh6ZeWO4w
# ZwYDVR0fBGAwXjBcoFqgWIZWaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwSUQlMjBWZXJpZmllZCUyMENTJTIwQU9DJTIwQ0El
# MjAwMS5jcmwwgaUGCCsGAQUFBwEBBIGYMIGVMGQGCCsGAQUFBzAChlhodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMElEJTIw
# VmVyaWZpZWQlMjBDUyUyMEFPQyUyMENBJTIwMDEuY3J0MC0GCCsGAQUFBzABhiFo
# dHRwOi8vb25lb2NzcC5taWNyb3NvZnQuY29tL29jc3AwZgYDVR0gBF8wXTBRBgwr
# BgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMAgGBmeBDAEEATANBgkqhkiG
# 9w0BAQwFAAOCAgEATSrIq1+gHJOktOBIcvZG/myrn9CUXiJLA7/M1i73S7EIdcy/
# DUIJ5S8mC/yWdCMFgtO5cpqCIQz2qgFZApqKCE73SivyWmUlNGWxvnvlk95PzeGG
# pNvCmFOvprS6+6/YJE0tyMB7kcxb+t+/odmzyr36LvVvDMOID/J69QA5OrAsPEOP
# tOf8ZgIDMrv7xuSPDlrk3gP3gnaKUQfiN+A1YRDNuvjwNf968bYcQQyeZh+kyCSc
# 3En1V+aY4Ze2s78eenyk/MWQu9ptdmTxUwJ2ZtdKgVqhGnk4Prug7QeQN3Bg1hbE
# jj2ySmgtIVH+H9JWl1vUWhUrEz/Y1K98LgDry2BYR30zzJyhy28WokSsyTYVR/0D
# /f16RKKzo9Yx+6gZ5dNUOz1w2vxHYVpkpfARpvzJFV5+/5QH4j0bjhNfyl4FhqJ0
# xXGi4sGuWFRF34amngS0PtKYnq4fn2ZmNQBtUraJ3FplLNW8tUhgn3rZx/tsM7Ur
# /Ju61MYy0jy3WauM0b2Dr5RyflWkW2pdxdEyplxBiQivsFvJgHg7Gj1Nh0HCA4Xu
# tX+FNkmPvkEClq/1AGWdKD0hy30YGAo4/4UjZKb4L+9XueIy6RKIsYJ1N9mS2QOi
# kFQmjlwBqnX7+sFA7n1gMjhBgXPc60OqNVeMIoL4JKydPv79mPtrWGIc15kwggbO
# MIIEtqADAgECAhMzAAC4wiCdpaH8EYwDAAAAALjCMA0GCSqGSIb3DQEBDAUAMFox
# CzAJBgNVBAYTAlVTMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKzAp
# BgNVBAMTIk1pY3Jvc29mdCBJRCBWZXJpZmllZCBDUyBBT0MgQ0EgMDEwHhcNMjMx
# MjE0MDc1MDMyWhcNMjMxMjE3MDc1MDMyWjBLMQswCQYDVQQGEwJSTzEQMA4GA1UE
# BxMHQ3JhaW92YTEUMBIGA1UEChMLQ2FwaHlvbiBTUkwxFDASBgNVBAMTC0NhcGh5
# b24gU1JMMIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAlAWbeMMJ+wxR
# FQ45nca9Y9+IbQB65s/uEbkaEGkSMt3ONYwXV2BXbriY1kig7U+nLgjYrxZap88Z
# uyRiZrnne+vNSMepnHfnw2N8bRncrhfkqrVxlyHr670hqpdK9lQKFXDFbJxh/Lmu
# QqFg94xQtzGGIUTGIzzIxGOnRsLm815nWQw0Zo/SgxliaAjfiVWNEPJKJDkiTpQR
# LRVikUalsXvUC6s57+BrRQri34fJeeabiQyZpBkeVmPBpY89v0c58FuFADQzh6Sa
# pLNMTj6QjtEs2jlCk7DencmFR1jjCOAmLzkLgQyia/moayrB7cmlCnJHyOZqpImX
# oUCZ5rPuMe6OppAyILsnaX5mFd6yCwux56gZo4kP8Zw6RdaBzhltPOj4BoeloS49
# kiuhnXnivBfo5t+Q1w1h42GS3YMpMBeed1z0QG2uSie9j893gTMkBxi1zYF7sATy
# u/BLCMLC52zljqv/nb/38e8eGX8sYVTXU5RDKk3eRnJ+pn9SBy5dAgMBAAGjggIa
# MIICFjAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB/wQEAwIHgDA9BgNVHSUENjA0Bgor
# BgEEAYI3YQEABggrBgEFBQcDAwYcKwYBBAGCN2GDoY/BNoG0pZl+goH440yB/Yau
# XTAdBgNVHQ4EFgQUzpgewFZm/Fox2ZNb0S0Kyf4ajt4wHwYDVR0jBBgwFoAU6IPE
# M9fcnwycdpoKptTfh6ZeWO4wZwYDVR0fBGAwXjBcoFqgWIZWaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwSUQlMjBWZXJpZmll
# ZCUyMENTJTIwQU9DJTIwQ0ElMjAwMS5jcmwwgaUGCCsGAQUFBwEBBIGYMIGVMGQG
# CCsGAQUFBzAChlhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRz
# L01pY3Jvc29mdCUyMElEJTIwVmVyaWZpZWQlMjBDUyUyMEFPQyUyMENBJTIwMDEu
# Y3J0MC0GCCsGAQUFBzABhiFodHRwOi8vb25lb2NzcC5taWNyb3NvZnQuY29tL29j
# c3AwZgYDVR0gBF8wXTBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0
# cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRt
# MAgGBmeBDAEEATANBgkqhkiG9w0BAQwFAAOCAgEATSrIq1+gHJOktOBIcvZG/myr
# n9CUXiJLA7/M1i73S7EIdcy/DUIJ5S8mC/yWdCMFgtO5cpqCIQz2qgFZApqKCE73
# SivyWmUlNGWxvnvlk95PzeGGpNvCmFOvprS6+6/YJE0tyMB7kcxb+t+/odmzyr36
# LvVvDMOID/J69QA5OrAsPEOPtOf8ZgIDMrv7xuSPDlrk3gP3gnaKUQfiN+A1YRDN
# uvjwNf968bYcQQyeZh+kyCSc3En1V+aY4Ze2s78eenyk/MWQu9ptdmTxUwJ2ZtdK
# gVqhGnk4Prug7QeQN3Bg1hbEjj2ySmgtIVH+H9JWl1vUWhUrEz/Y1K98LgDry2BY
# R30zzJyhy28WokSsyTYVR/0D/f16RKKzo9Yx+6gZ5dNUOz1w2vxHYVpkpfARpvzJ
# FV5+/5QH4j0bjhNfyl4FhqJ0xXGi4sGuWFRF34amngS0PtKYnq4fn2ZmNQBtUraJ
# 3FplLNW8tUhgn3rZx/tsM7Ur/Ju61MYy0jy3WauM0b2Dr5RyflWkW2pdxdEyplxB
# iQivsFvJgHg7Gj1Nh0HCA4XutX+FNkmPvkEClq/1AGWdKD0hy30YGAo4/4UjZKb4
# L+9XueIy6RKIsYJ1N9mS2QOikFQmjlwBqnX7+sFA7n1gMjhBgXPc60OqNVeMIoL4
# JKydPv79mPtrWGIc15kwggdaMIIFQqADAgECAhMzAAAABzeMW6HZW4zUAAAAAAAH
# MA0GCSqGSIb3DQEBDAUAMGMxCzAJBgNVBAYTAlVTMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xNDAyBgNVBAMTK01pY3Jvc29mdCBJRCBWZXJpZmllZCBD
# b2RlIFNpZ25pbmcgUENBIDIwMjEwHhcNMjEwNDEzMTczMTU0WhcNMjYwNDEzMTcz
# MTU0WjBaMQswCQYDVQQGEwJVUzEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSswKQYDVQQDEyJNaWNyb3NvZnQgSUQgVmVyaWZpZWQgQ1MgQU9DIENBIDAx
# MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAt/fAAygHxbo+jxA04hNI
# 8bz+EqbWvSu9dRgAawjCZau1Y54IQal5ArpJWi8cIj0WA+mpwix8iTRguq9JELZv
# TMo2Z1U6AtE1Tn3mvq3mywZ9SexVd+rPOTr+uda6GVgwLA80LhRf82AvrSwxmZpC
# H/laT08dn7+Gt0cXYVNKJORm1hSrAjjDQiZ1Jiq/SqiDoHN6PGmT5hXKs22E79Me
# FWYB4y0UlNqW0Z2LPNua8k0rbERdiNS+nTP/xsESZUnrbmyXZaHvcyEKYK85WBz3
# Sr6Et8Vlbdid/pjBpcHI+HytoaUAGE6rSWqmh7/aEZeDDUkz9uMKOGasIgYnenUk
# 5E0b2U//bQqDv3qdhj9UJYWADNYC/3i3ixcW1VELaU+wTqXTxLAFelCi/lRHSjaW
# ipDeE/TbBb0zTCiLnc9nmOjZPKlutMNho91wxo4itcJoIk2bPot9t+AV+UwNaDRI
# bcEaQaBycl9pcYwWmf0bJ4IFn/CmYMVG1ekCBxByyRNkFkHmuMXLX6PMXcveE46j
# Mr9syC3M8JHRddR4zVjd/FxBnS5HOro3pg6StuEPshrp7I/Kk1cTG8yOWl8aqf6O
# JeAVyG4lyJ9V+ZxClYmaU5yvtKYKk1FLBnEBfDWw+UAzQV0vcLp6AVx2Fc8n0vpo
# yudr3SwZmckJuz7R+S79BzMCAwEAAaOCAg4wggIKMA4GA1UdDwEB/wQEAwIBhjAQ
# BgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU6IPEM9fcnwycdpoKptTfh6ZeWO4w
# VAYDVR0gBE0wSzBJBgRVHSAAMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTAZBgkrBgEEAYI3
# FAIEDB4KAFMAdQBiAEMAQTASBgNVHRMBAf8ECDAGAQH/AgEAMB8GA1UdIwQYMBaA
# FNlBKbAPD2Ns72nX9c0pnqRIajDmMHAGA1UdHwRpMGcwZaBjoGGGX2h0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUyMElEJTIwVmVy
# aWZpZWQlMjBDb2RlJTIwU2lnbmluZyUyMFBDQSUyMDIwMjEuY3JsMIGuBggrBgEF
# BQcBAQSBoTCBnjBtBggrBgEFBQcwAoZhaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBJRCUyMFZlcmlmaWVkJTIwQ29kZSUy
# MFNpZ25pbmclMjBQQ0ElMjAyMDIxLmNydDAtBggrBgEFBQcwAYYhaHR0cDovL29u
# ZW9jc3AubWljcm9zb2Z0LmNvbS9vY3NwMA0GCSqGSIb3DQEBDAUAA4ICAQB3/utL
# ItkwLTp4Nfh99vrbpSsL8NwPIj2+TBnZGL3C8etTGYs+HZUxNG+rNeZa+Rzu9oEc
# AZJDiGjEWytzMavD6Bih3nEWFsIW4aGh4gB4n/pRPeeVrK4i1LG7jJ3kPLRhNOHZ
# iLUQtmrF4V6IxtUFjvBnijaZ9oIxsSSQP8iHMjP92pjQrHBFWHGDbkmx+yO6Ian3
# QN3YmbdfewzSvnQmKbkiTibJgcJ1L0TZ7BwmsDvm+0XRsPOfFgnzhLVqZdEyWww1
# 0bflOeBKqkb3SaCNQTz8nshaUZhrxVU5qNgYjaaDQQm+P2SEpBF7RolEC3lllfuL
# 4AOGCtoNdPOWrx9vBZTXAVdTE2r0IDk8+5y1kLGTLKzmNFn6kVCc5BddM7xoDWQ4
# aUoCRXcsBeRhsclk7kVXP+zJGPOXwjUJbnz2Kt9iF/8B6FDO4blGuGrogMpyXkuw
# CC2Z4XcfyMjPDhqZYAPGGTUINMtFbau5RtGG1DOWE9edCahtuPMDgByfPixvhy3s
# n7zUHgIC/YsOTMxVuMQi/bgamemo/VNKZrsZaS0nzmOxKpg9qDefj5fJ9gIHXcp2
# F0OHcVwe3KnEXa8kqzMDfrRl/wwKrNSFn3p7g0b44Ad1ONDmWt61MLQvF54LG62i
# 6ffhTCeoFT9Z9pbUo2gxlyTFg7Bm0fgOlnRfGDCCB54wggWGoAMCAQICEzMAAAAH
# h6M0o3uljhwAAAAAAAcwDQYJKoZIhvcNAQEMBQAwdzELMAkGA1UEBhMCVVMxHjAc
# BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjFIMEYGA1UEAxM/TWljcm9zb2Z0
# IElkZW50aXR5IFZlcmlmaWNhdGlvbiBSb290IENlcnRpZmljYXRlIEF1dGhvcml0
# eSAyMDIwMB4XDTIxMDQwMTIwMDUyMFoXDTM2MDQwMTIwMTUyMFowYzELMAkGA1UE
# BhMCVVMxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjE0MDIGA1UEAxMr
# TWljcm9zb2Z0IElEIFZlcmlmaWVkIENvZGUgU2lnbmluZyBQQ0EgMjAyMTCCAiIw
# DQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBALLwwK8ZiCji3VR6TElsaQhVCbRS
# /3pK+MHrJSj3Zxd3KU3rlfL3qrZilYKJNqztA9OQacr1AwoNcHbKBLbsQAhBnIB3
# 4zxf52bDpIO3NJlfIaTE/xrweLoQ71lzCHkD7A4As1Bs076Iu+mA6cQzsYYH/Cbl
# 1icwQ6C65rU4V9NQhNUwgrx9rGQ//h890Q8JdjLLw0nV+ayQ2Fbkd242o9kH82RZ
# sH3HEyqjAB5a8+Ae2nPIPc8sZU6ZE7iRrRZywRmrKDp5+TcmJX9MRff241UaOBs4
# NmHOyke8oU1TYrkxh+YeHgfWo5tTgkoSMoayqoDpHOLJs+qG8Tvh8SnifW2Jj3+i
# i11TS8/FGngEaNAWrbyfNrC69oKpRQXY9bGH6jn9NEJv9weFxhTwyvx9OJLXmRGb
# AUXN1U9nf4lXezky6Uh/cgjkVd6CGUAf0K+Jw+GE/5VpIVbcNr9rNE50Sbmy/4RT
# CEGvOq3GhjITbCa4crCzTTHgYYjHs1NbOc6brH+eKpWLtr+bGecy9CrwQyx7S/Bf
# YJ+ozst7+yZtG2wR461uckFu0t+gCwLdN0A6cFtSRtR8bvxVFyWwTtgMMFRuBa3v
# mUOTnfKLsLefRaQcVTgRnzeLzdpt32cdYKp+dhr2ogc+qM6K4CBI5/j4VFyC4QFe
# UP2YAidLtvpXRRo3AgMBAAGjggI1MIICMTAOBgNVHQ8BAf8EBAMCAYYwEAYJKwYB
# BAGCNxUBBAMCAQAwHQYDVR0OBBYEFNlBKbAPD2Ns72nX9c0pnqRIajDmMFQGA1Ud
# IARNMEswSQYEVR0gADBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jvc29m
# dC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wGQYJKwYBBAGCNxQCBAwe
# CgBTAHUAYgBDAEEwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTIftJqhSob
# yhmYBAcnz1AQT2ioojCBhAYDVR0fBH0wezB5oHegdYZzaHR0cDovL3d3dy5taWNy
# b3NvZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwSWRlbnRpdHklMjBWZXJp
# ZmljYXRpb24lMjBSb290JTIwQ2VydGlmaWNhdGUlMjBBdXRob3JpdHklMjAyMDIw
# LmNybDCBwwYIKwYBBQUHAQEEgbYwgbMwgYEGCCsGAQUFBzAChnVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMElkZW50aXR5
# JTIwVmVyaWZpY2F0aW9uJTIwUm9vdCUyMENlcnRpZmljYXRlJTIwQXV0aG9yaXR5
# JTIwMjAyMC5jcnQwLQYIKwYBBQUHMAGGIWh0dHA6Ly9vbmVvY3NwLm1pY3Jvc29m
# dC5jb20vb2NzcDANBgkqhkiG9w0BAQwFAAOCAgEAfyUqnv7Uq+rdZgrbVyNMul5s
# kONbhls5fccPlmIbzi+OwVdPQ4H55v7VOInnmezQEeW4LqK0wja+fBznANbXLB0K
# rdMCbHQpbLvG6UA/Xv2pfpVIE1CRFfNF4XKO8XYEa3oW8oVH+KZHgIQRIwAbyFKQ
# 9iyj4aOWeAzwk+f9E5StNp5T8FG7/VEURIVWArbAzPt9ThVN3w1fAZkF7+YU9kbq
# 1bCR2YD+MtunSQ1Rft6XG7b4e0ejRA7mB2IoX5hNh3UEauY0byxNRG+fT2MCEhQl
# 9g2i2fs6VOG19CNep7SquKaBjhWmirYyANb0RJSLWjinMLXNOAga10n8i9jqeprz
# SMU5ODmrMCJE12xS/NWShg/tuLjAsKP6SzYZ+1Ry358ZTFcx0FS/mx2vSoU8s8HR
# vy+rnXqyUJ9HBqS0DErVLjQwK8VtsBdekBmdTbQVoCgPCqr+PDPB3xajYnzevs7e
# idBsM71PINK2BoE2UfMwxCCX3mccFgx6UsQeRSdVVVNSyALQe6PT12418xon2iDG
# E81OGCreLzDcMAZnrUAx4XQLUz6ZTl65yPUiOh3k7Yww94lDf+8oG2oZmDh5O1Qe
# 38E+M3vhKwmzIeoB1dVLlz4i3IpaDcR+iuGjH2TdaC1ZOmBXiCRKJLj4DT2uhJ04
# ji+tHD6n58vhavFIrmcxghq8MIIauAIBATBxMFoxCzAJBgNVBAYTAlVTMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKzApBgNVBAMTIk1pY3Jvc29mdCBJ
# RCBWZXJpZmllZCBDUyBBT0MgQ0EgMDECEzMAALjCIJ2lofwRjAMAAAAAuMIwDQYJ
# YIZIAWUDBAIBBQCggYYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwLwYJKoZI
# hvcNAQkEMSIEII+fc4BaVxn1qWVsTI2DMEjicCri558eiOm6djNi4Mw6MDgGCisG
# AQQBgjcCAQwxKjAooCaAJABBAGQAdgBhAG4AYwBlAGQAIABJAG4AcwB0AGEAbABs
# AGUAcjANBgkqhkiG9w0BAQEFAASCAYAv56QZrgQjy2xushPkyLDtV45g3RONn3v6
# SKIz5DPNl0RtrKlvd/VA1G7md6DYkcChMql3H4vC/GplgS1N1MUik4CgJoX3h0Z0
# X6alRwU58fdRWSORWn9hbjEp01CgzGhY3QdQGF7QgMmZ0A3PCQRa8br93X6ZlWeo
# FZOGLy3Jix6RJgb0hlV7kYnNPNtmFCfnSnO+UJh75Q5C+ME+z2pctdwJG7Yt4Wpo
# +mC5LxhZ5DM0F4Tgp4NzmvbA7CMrz++a5EaVFeh5xiTNnOedCRREtufxhJmGzfzo
# GXXzW+rVZxsNuU65mi33h6LmHB/6qS3+3qGZLtSYlU8nYh5hlUKxugiFYW6Pb432
# WaACB9bK6GprrNIM6Keae1bYtccUfKxVDT62FdhOTXEOpbaVL2nQsKevqdETBxgk
# qDQS/9yWg83mosyqnBVWSuws4uuy6v85lgPmftVWSlvBg5tyudR5AiI6Q7yvEJLy
# D6L/iwvpYFIm1JRz/5mZO+X9U1J9AiqhghgTMIIYDwYKKwYBBAGCNwMDATGCF/8w
# ghf7BgkqhkiG9w0BBwKgghfsMIIX6AIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBYgYL
# KoZIhvcNAQkQAQSgggFRBIIBTTCCAUkCAQEGCisGAQQBhFkKAwEwMTANBglghkgB
# ZQMEAgEFAAQgWr60cFxmDwLAf3NLAsPvEsiWTNQ6wSvn8wCcWuFsSrICBmV6678B
# 6BgTMjAyMzEyMTQxMzAwMjAuNTAyWjAEgAIB9KCB4aSB3jCB2zELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFt
# ZXJpY2EgT3BlcmF0aW9uczEnMCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjdEMDAt
# MDVFMC1EOTQ3MTUwMwYDVQQDEyxNaWNyb3NvZnQgUHVibGljIFJTQSBUaW1lIFN0
# YW1waW5nIEF1dGhvcml0eaCCDyEwggeCMIIFaqADAgECAhMzAAAABeXPD/9mLsmH
# AAAAAAAFMA0GCSqGSIb3DQEBDAUAMHcxCzAJBgNVBAYTAlVTMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xSDBGBgNVBAMTP01pY3Jvc29mdCBJZGVudGl0
# eSBWZXJpZmljYXRpb24gUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAyMDAe
# Fw0yMDExMTkyMDMyMzFaFw0zNTExMTkyMDQyMzFaMGExCzAJBgNVBAYTAlVTMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29m
# dCBQdWJsaWMgUlNBIFRpbWVzdGFtcGluZyBDQSAyMDIwMIICIjANBgkqhkiG9w0B
# AQEFAAOCAg8AMIICCgKCAgEAnnznUmP94MWfBX1jtQYioxwe1+eXM9ETBb1lRkd3
# kcFdcG9/sqtDlwxKoVIcaqDb+omFio5DHC4RBcbyQHjXCwMk/l3TOYtgoBjxnG/e
# ViS4sOx8y4gSq8Zg49REAf5huXhIkQRKe3Qxs8Sgp02KHAznEa/Ssah8nWo5hJM1
# xznkRsFPu6rfDHeZeG1Wa1wISvlkpOQooTULFm809Z0ZYlQ8Lp7i5F9YciFlyAKw
# n6yjN/kR4fkquUWfGmMopNq/B8U/pdoZkZZQbxNlqJOiBGgCWpx69uKqKhTPVi3g
# VErnc/qi+dR8A2MiAz0kN0nh7SqINGbmw5OIRC0EsZ31WF3Uxp3GgZwetEKxLms7
# 3KG/Z+MkeuaVDQQheangOEMGJ4pQZH55ngI0Tdy1bi69INBV5Kn2HVJo9XxRYR/J
# PGAaM6xGl57Ei95HUw9NV/uC3yFjrhc087qLJQawSC3xzY/EXzsT4I7sDbxOmM2r
# l4uKK6eEpurRduOQ2hTkmG1hSuWYBunFGNv21Kt4N20AKmbeuSnGnsBCd2cjRKG7
# 9+TX+sTehawOoxfeOO/jR7wo3liwkGdzPJYHgnJ54UxbckF914AqHOiEV7xTnD1a
# 69w/UTxwjEugpIPMIIE67SFZ2PMo27xjlLAHWW3l1CEAFjLNHd3EQ79PUr8FUXet
# Xr0CAwEAAaOCAhswggIXMA4GA1UdDwEB/wQEAwIBhjAQBgkrBgEEAYI3FQEEAwIB
# ADAdBgNVHQ4EFgQUa2koOjUvSGNAz3vYr0npPtk92yEwVAYDVR0gBE0wSzBJBgRV
# HSAAMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lv
# cHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEFBQcDCDAZBgkr
# BgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQY
# MBaAFMh+0mqFKhvKGZgEByfPUBBPaKiiMIGEBgNVHR8EfTB7MHmgd6B1hnNodHRw
# Oi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNyb3NvZnQlMjBJZGVu
# dGl0eSUyMFZlcmlmaWNhdGlvbiUyMFJvb3QlMjBDZXJ0aWZpY2F0ZSUyMEF1dGhv
# cml0eSUyMDIwMjAuY3JsMIGUBggrBgEFBQcBAQSBhzCBhDCBgQYIKwYBBQUHMAKG
# dWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWljcm9zb2Z0
# JTIwSWRlbnRpdHklMjBWZXJpZmljYXRpb24lMjBSb290JTIwQ2VydGlmaWNhdGUl
# MjBBdXRob3JpdHklMjAyMDIwLmNydDANBgkqhkiG9w0BAQwFAAOCAgEAX4h2x35t
# tVoVdedMeGj6TuHYRJklFaW4sTQ5r+k77iB79cSLNe+GzRjv4pVjJviceW6AF6yc
# WoEYR0LYhaa0ozJLU5Yi+LCmcrdovkl53DNt4EXs87KDogYb9eGEndSpZ5ZM74LN
# vVzY0/nPISHz0Xva71QjD4h+8z2XMOZzY7YQ0Psw+etyNZ1CesufU211rLslLKsO
# 8F2aBs2cIo1k+aHOhrw9xw6JCWONNboZ497mwYW5EfN0W3zL5s3ad4Xtm7yFM7Uj
# rhc0aqy3xL7D5FR2J7x9cLWMq7eb0oYioXhqV2tgFqbKHeDick+P8tHYIFovIP7Y
# G4ZkJWag1H91KlELGWi3SLv10o4KGag42pswjybTi4toQcC/irAodDW8HNtX+cbz
# 0sMptFJK+KObAnDFHEsukxD+7jFfEV9Hh/+CSxKRsmnuiovCWIOb+H7DRon9Tlxy
# diFhvu88o0w35JkNbJxTk4MhF/KgaXn0GxdH8elEa2Imq45gaa8D+mTm8LWVydt4
# ytxYP/bqjN49D9NZ81coE6aQWm88TwIf4R4YZbOpMKN0CyejaPNN41LGXHeCUMYm
# Bx3PkP8ADHD1J2Cr/6tjuOOCztfp+o9Nc+ZoIAkpUcA/X2gSMkgHAPUvIdtoSAHE
# UKiBhI6JQivRepyvWcl+JYbYbBh7pmgAXVswggeXMIIFf6ADAgECAhMzAAAAJgqv
# l4/ehRABAAAAAAAmMA0GCSqGSIb3DQEBDAUAMGExCzAJBgNVBAYTAlVTMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBQ
# dWJsaWMgUlNBIFRpbWVzdGFtcGluZyBDQSAyMDIwMB4XDTIzMDQwNjE4NDQxNVoX
# DTI0MDQwNDE4NDQxNVowgdsxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJzAl
# BgNVBAsTHm5TaGllbGQgVFNTIEVTTjo3RDAwLTA1RTAtRDk0NzE1MDMGA1UEAxMs
# TWljcm9zb2Z0IFB1YmxpYyBSU0EgVGltZSBTdGFtcGluZyBBdXRob3JpdHkwggIi
# MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC0riWIimxSXHbVxHO9WzhjJzAi
# 6sKIgmQE04Q9dMWr+vZ0l/HMQSzeV/DR4MgIWwxbmJnk04S366uKS6O8pQeV7k5b
# qL0Q5lHdAHIR88gomQMv8EykHZro/nk/PPpwhCNsALt+6VmMxR4VfTbejOND7vCv
# aWWv7RbPjci7H/jNPl8x7YSvssXVbnNBcmgBwPkRbyEJAqr9WrOfa8qJb6YC2D45
# GiAHjIbfvHHxExWNM2BLFLKCv9PVgOL7BfniLu1+VljSifqlv4AZ2J7+kBBOJh9l
# cFweaqg6OJ8UFfYe8XsAh8I+8tW3ziWR5Kk4fii2xssjQwgyuSi6egpt3E3+SCdk
# h7LmFFUmyddu3X28TNpDWkQMn7Jp1YLmQ80qzDV8m4YhBTVhFCC2sDBaGjeKNXuC
# PCuPli48NnBNLO07d40bwAyO0ItIFWRT2/tVsrKPOTfKLqFgihDFib1A3fPyK1nM
# pBGH0NpZz9/zL3gqsBd5JqimYiAfkqF4d+hrsjgSm+YIth7dCepRVpNq8xZNqou4
# kS5AY9PlHOLwsbt0Gy/YtpDenz+XtRhuvq8baVQIiWL9fRQQCb8nazV6n3KtV+xB
# X0he+TsyvdlxdzgWDWw1bwa5RqJ9dzXaBN3fXet2nPtsruwLUQCCbocY18mZdthG
# 4qsMOfPvuCsSOyZ0awIDAQABo4IByzCCAccwHQYDVR0OBBYEFIXWJxgsfRCeM5dL
# Vu98fwgQd992MB8GA1UdIwQYMBaAFGtpKDo1L0hjQM972K9J6T7ZPdshMGwGA1Ud
# HwRlMGMwYaBfoF2GW2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3Js
# L01pY3Jvc29mdCUyMFB1YmxpYyUyMFJTQSUyMFRpbWVzdGFtcGluZyUyMENBJTIw
# MjAyMC5jcmwweQYIKwYBBQUHAQEEbTBrMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFB1YmxpYyUy
# MFJTQSUyMFRpbWVzdGFtcGluZyUyMENBJTIwMjAyMC5jcnQwDAYDVR0TAQH/BAIw
# ADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMCB4AwZgYDVR0g
# BF8wXTBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMAgGBmeBDAEE
# AjANBgkqhkiG9w0BAQwFAAOCAgEAOgJ2JRIrzqdjPHBJkzssLLXy34WntO3aRZH8
# e7QHAVBpP4ZFjsYkZVzyzmmPEN6kX25//itcN5T1IJx1Z0lmbDrfRRKrN6v/GHsR
# ujB4BP7PgcrW90sLA85cf+/N3z29TZGa6ubTb+/Hc+g+OspJjGfx8J1P/m7q9wAO
# TAYM/pm1AVTEV7mMzs/9Ki+xMeEQU9b4fFF+xkVR+2dAneEFUPT28728QAgOnM01
# mbqZnLeyQ/T2FSjb1zuBEOye8ixX7Sx9thTlNevujWbQ+BFMoypK0FMjR1d6aabi
# dlBY2Bl+DiF1Zv3RQc26aTW37BaGG5jZayPMT0Jynhub3FIqCO+harGGIxMYsIFw
# hPcGuKM+Hvdz5pd1fftx1IPjXgCw7O+ZQkBfYiG+y9heCF11BfGjOlyPWYvePeRm
# vtWj27oReqxDC+AC9NywY1poVI7Su8AIz8I78F/rTSF/KV8RTtoMeJCSXrAAboPQ
# CbcDawl6OKiKrtObmJe5OavNo47qpgYpEocdxbYyZ65kCL9bAn580D56iiGPZCwk
# XX/cCz+3nxASntWgMFqJgFeRSsLQKGt0SPx18Sg21xHE0TqfXpclc7KKVmtzHKma
# FFE4doHyVD6Du8/9mo0q7pptRPx3/ST9mhcKcoT5o1xnIJtQTN17TALpEaEwTxNH
# h0MjG6sxggdFMIIHQQIBATB4MGExCzAJBgNVBAYTAlVTMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBQdWJsaWMgUlNB
# IFRpbWVzdGFtcGluZyBDQSAyMDIwAhMzAAAAJgqvl4/ehRABAAAAAAAmMA0GCWCG
# SAFlAwQCAQUAoIIEnjARBgsqhkiG9w0BCRACDzECBQAwGgYJKoZIhvcNAQkDMQ0G
# CyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJBTEPFw0yMzEyMTQxMzAwMjBaMC8GCSqG
# SIb3DQEJBDEiBCD1PC9We074r7gOV78EQ44lWMKtjspphV5tYDElrmsmGzCBuQYL
# KoZIhvcNAQkQAi8xgakwgaYwgaMwgaAEIHkbapBeWACVHvwjYQzMxfMpgFMztqkv
# Ti76CrM/mOuwMHwwZaRjMGExCzAJBgNVBAYTAlVTMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBQdWJsaWMgUlNBIFRp
# bWVzdGFtcGluZyBDQSAyMDIwAhMzAAAAJgqvl4/ehRABAAAAAAAmMIIDYAYLKoZI
# hvcNAQkQAhIxggNPMIIDS6GCA0cwggNDMIICKwIBATCCAQmhgeGkgd4wgdsxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jv
# c29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJzAlBgNVBAsTHm5TaGllbGQgVFNTIEVT
# Tjo3RDAwLTA1RTAtRDk0NzE1MDMGA1UEAxMsTWljcm9zb2Z0IFB1YmxpYyBSU0Eg
# VGltZSBTdGFtcGluZyBBdXRob3JpdHmiIwoBATAHBgUrDgMCGgMVAMnTKwL99JQC
# GNlqnU+DSPFjx5CdoGcwZaRjMGExCzAJBgNVBAYTAlVTMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBQdWJsaWMgUlNB
# IFRpbWVzdGFtcGluZyBDQSAyMDIwMA0GCSqGSIb3DQEBCwUAAgUA6SVqQjAiGA8y
# MDIzMTIxNDExNDkyMloYDzIwMjMxMjE1MTE0OTIyWjB2MDwGCisGAQQBhFkKBAEx
# LjAsMAoCBQDpJWpCAgEAMAkCAQACAV8CAf8wBwIBAAICEkMwCgIFAOkmu8ICAQAw
# NgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgC
# AQACAwGGoDANBgkqhkiG9w0BAQsFAAOCAQEAVkBeUOIoZ/g2gwfH5xjmFm5oNcZD
# 7Y5XeNsr1K87w7Ol0Im/bWitV+oCz43madDVzdZi0PV9T1a/VLlWOmTS8GRr5Wfs
# 9BWDLWPmoijYHLjzLyJ6HUFkodKsf9mLw8xmEQo0WDO4lfNuae8KMfh595Swphls
# tqQky9RtKYyhRsiRtzroCrHljNO1RhRkzQtzGNWr7pdPVZW30/nXjvKaCRo7rs25
# F5cCsTdX8rgy+o1H0/KuZMDhL3dyGTKyjLJH3Pmzst9tQcx3OGWQcQbRjYHhw103
# fCbY/JlKyjZBZzimCtWK2J/KS94FnfGxQQtNe2/9crdiuKNJT42JGPhRvzANBgkq
# hkiG9w0BAQEFAASCAgCnVI+FC0AwB402w1CaLzCGId5usVqYCYPQYyvKGoTv3M+b
# 5Y7HYRVkZV+RIEzdcQyjaW8hInOv4LHem92jZBiPVCYQcSP9CQtZW7F7ClrF1n5G
# dDqghLRfUgpS+T6ollxBk5n7sTNiK2auKp3zoeH9D1y+N8WkVffjZPXkPFCPlW5a
# CNgL0IS5YUz+WCCnRpmXrdzdH67cHNR1swN6CcAxRWqyRml3hRHwHP8aPtJwPwsQ
# uWKzc054DNJbENgD95dAQ7JxOJFfO3Nuc0P70H1Ip/gUKaMYsPB4q/VeD6WGtztK
# zm5hzgTwMJSbLuDEJue8ATPVR16ENhRUdg9P44jZP90F2pBO7/EGYLF++ZFL8M5p
# ZFpeFt7Xg3os5tv8Jy7ABr8qqrakHxFTwWyXhbcNnUF8SPxq2F1E0l2LgL/pYK6l
# ujypTKzeRwbRyXHKfL2AYPNXC1X/8880s6veRMBOqrxRE48uRaaaDKQ8d94xgYqa
# KFpQgunQqPW5rcpKmqC+/uqOW/Yl1cz42JzR6VXYJbkrxxl9WsYe7ZsL55sTGin5
# 2aMjDwC/x7aWtE3nD4g3RlPXMwVH1EXNf21Bm7kC0RIsAKsqJKNzdwOmOt6oJHqO
# 9ruh/OfiC0CSyXDDt+ktJn2QlYT0JNN0hh07DJc7VmsoOXIzTibZu9K5FgjS9Q==
# SIG # End signature block