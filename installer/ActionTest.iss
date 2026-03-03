#define MyAppName "ActionTest"
#define MyAppVersion "0.0.1"
#define MyAppExeName "ActionTest.exe"

[Setup]
AppId={{D8A0E7D5-0D53-4A6D-9E61-2A8C4B2E9E11}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=output
OutputBaseFilename=ActionTestSetup
Compression=lzma
SolidCompression=yes

[Files]
Source: "..\dist\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch {#MyAppName}"; Flags: nowait postinstall skipifsilent
