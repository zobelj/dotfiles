alias vim="nvim"
alias v="nvim"
alias ls="eza -1 --icons=always"

eval "$(ssh-agent)" >/dev/null
ssh-add --apple-use-keychain ~/.ssh/private_keys/* 2>/dev/null

# SR AWS profile stuff
export AWS_PROFILE='sr-prod-mfa'

# case-insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# load zsh plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load starship.rs prompt
eval "$(starship init zsh)"

# bun completions
[ -s "/Users/joe/.bun/_bun" ] && source "/Users/joe/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
