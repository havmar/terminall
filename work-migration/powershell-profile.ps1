
$env:EDITOR = "nvim"
$env:VISUAL = "nvim"

Import-Module PSFzf
$env:FZF_DEFAULT_OPTS = "--preview 'bat --color=always --style=numbers --line-range :500 {}' --preview-window=up"

function prompt {
    $ESC = [char]27
    "$ESC]9;9;$($PWD.Path)$ESC\" + "PS $($PWD.Path)> "
}

Invoke-Expression (& { (zoxide init powershell | Out-String) })

function zip($path) { tar -cf "$($path.TrimEnd('/\')).zip" -a $path }
function unzip($path) { tar -xf $path -C (New-Item -Force -ItemType Directory ([IO.Path]::GetFileNameWithoutExtension($path))) }
