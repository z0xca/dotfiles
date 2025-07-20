# default apps
export EDITOR=nvim
export TERMINAL=wezterm
export BROWSER=zen-browser

# cleaning up home folder
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CURRENT_DESKTOP="Hyprland"
export PATH="$XDG_BIN_HOME:$PATH"
export PATH="$XDG_BIN_HOME/scripts:$PATH"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo
export LESSHISTFILE="-"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
#export HISTFILE="$XDG_STATE_HOME/zsh_history"
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PATH="$XDG_CACHE_HOME/.bun/bin:$PATH"
export BEMOJI_PICKER_CMD='tofi -c /home/odin/.config/tofi/history-config'
export BEMOJI_CLIP_CMD="wl-copy"
export GITHUB_TOKEN="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"
