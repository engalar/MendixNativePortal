$apksignerPath = "D:\Android\android-sdk\build-tools\34.0.0\apksigner.bat"  # 替换为您的 apksigner 路径
$unsignedApkPath = "D:\Users\eg\Documents\Mendix\__native_root_portal\android\app\build\outputs\apk\dev\release\app-dev-release-unsigned.apk"
Get-FileHash -Algorithm MD5 -Path $unsignedApkPath
#A9A3374F204E936B20DFE76C6EF49400
$signedApkPath = "D:\Users\eg\signed.apk"
$keystorePath = "D:\Users\eg\sign-keystore.jks"
$alias = "sign"
$storepass = "mypass"

& $apksignerPath sign --ks $keystorePath --ks-pass pass:$storepass --ks-key-alias $alias --out $signedApkPath $unsignedApkPath


Get-FileHash -Algorithm MD5 -Path $signedApkPath
#323EBA5107254BDEA300DE15EFEA12BA

