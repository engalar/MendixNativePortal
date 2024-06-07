$version = "9.24.12.20495"
$mprFile = "NativePortal.mpr"
$JavaHome="$env:ProgramFiles/Eclipse Adoptium/jdk-11.0.20.8-hotspot"


$JavaBin = Join-Path -Path $JavaHome -ChildPath "bin\java.exe"
$mxbuildArgs = "--target=deploy --native-packager --loose-version-check --java-home=`"$JavaHome`" --java-exe-path=`"$JavaBin`" $mprFile"

$env:Path += ";$env:ProgramFiles/Mendix/$version/modeler"

Invoke-Expression "mxbuild $mxbuildArgs"
