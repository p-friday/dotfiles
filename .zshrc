bindkey -v

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="friday"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

autoload -U compinit && compinit

# Keybindings
# bindkey -s ^f "~/.local/bin/tmux_sessionizer\n"
bindkey -s ^f "source ~/.local/bin/set_directory\n"
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Aliases
alias lg='lazygit'
alias bat='batcat'
alias nvim-new='NVIM_APPNAME="nvim-new" nvim'

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
# eval "$(fzf --zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# emit escape sequence so windows terminal duplicate tab keeps current path
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

# bun completions
[ -s "/home/friday/.bun/_bun" ] && source "/home/friday/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
