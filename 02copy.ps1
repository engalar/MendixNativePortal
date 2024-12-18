$ReactNativeProjectRoot = "D:\Users\eg\Documents\Mendix\__native_root_portal"


$TargetPath = Join-Path -Path $ReactNativeProjectRoot -ChildPath "android/app/src/main"

Copy-Item -Recurse -Force "deployment\native\bundle\android\*" $TargetPath
