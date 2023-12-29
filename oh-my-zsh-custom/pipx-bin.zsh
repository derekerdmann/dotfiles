# Add pipx bin directory to PATH if needed
if (( $+commands[pipx] )); then
    pipxbindir="$(pipx environment --quiet --value PIPX_BIN_DIR)"
    if ! [[ :$PATH: == *":$pipxbindir:"* ]]; then
        export PATH="$PATH:$pipxbindir"
    fi
fi

unset pipxbindir
