export EDITOR=nvim
export TERMINAL=wezterm

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$XDG_BIN_HOME:$PATH"
export PATH="$XDG_BIN_HOME/scripts:$PATH"
export PATH="$XDG_CACHE_HOME/.bun/bin:$PATH"

export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export BUN_INSTALL_CACHE_DIR="$XDG_CACHE_HOME/bun"

export LESSHISTFILE="-"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE=$XDG_STATE_HOME/zsh_history
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

export BEMOJI_PICKER_CMD='tofi -c /home/odin/.config/tofi/history-config'
export BEMOJI_CLIP_CMD="wl-copy"
