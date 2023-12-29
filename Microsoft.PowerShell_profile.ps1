Set-PSReadLineOption -PredictionSource None

# Override unreadable colors against a dark Solarized background
Set-PSReadlineOption -Colors @{
    "Parameter" = [ConsoleColor]::DarkBlue
    "Operator" = [ConsoleColor]::Gray
}

$PSStyle.FileInfo.Directory = "$($PSStyle.Foreground.Cyan)"
$PSStyle.FileInfo.SymbolicLink = "$($PSStyle.Foreground.Magenta)"
$PSStyle.FileInfo.Executable = "$($PSStyle.Foreground.Green)"

oh-my-posh init pwsh --config ~/dotfiles/oh-my-posh/powerlevel10k_custom.omp.json | Invoke-Expression
