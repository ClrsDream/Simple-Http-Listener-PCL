$msbuild = join-path -path (Get-ItemProperty "HKLM:\software\Microsoft\MSBuild\ToolsVersions\14.0")."MSBuildToolsPath" -childpath "msbuild.exe"
&$msbuild SimpleHttpServer\SimpleHttpServer.csproj /t:Build /t:Package /t:Publish /p:Configuration="Release"