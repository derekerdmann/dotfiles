Set-PSReadLineOption -PredictionSource None
Set-PSReadlineOption -Colors @{ "Parameter"="Blue" }

oh-my-posh init pwsh --config ~/dotfiles/oh-my-posh/powerlevel10k_custom.omp.json | Invoke-Expression
