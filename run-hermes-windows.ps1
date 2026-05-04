# Start Hermes Agent on native Windows PowerShell.
$ErrorActionPreference = "Stop"

if (Get-Command chcp -ErrorAction SilentlyContinue) {
    chcp 65001 > $null
}

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$env:PYTHONUTF8 = "1"
$env:PYTHONIOENCODING = "utf-8"
$env:HERMES_HOME = "D:\codex_info\programming\.hermes"
$env:TERMINAL_CWD = "D:\codex_info\programming\hermes-agent"
$env:HERMES_GIT_BASH_PATH = "D:\soft\Git\bin\bash.exe"

Set-Location -LiteralPath "D:\codex_info\programming\hermes-agent"
& ".\.venv\Scripts\python.exe" ".\hermes" @args
