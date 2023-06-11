# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# nodeenv
eval "$(nodenv init -)"

# direnv
eval "$(direnv hook zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fvi() {
  local file
  file=$(find . | fzf)
  vi "$file"
}

# zoxide
eval "$(zoxide init zsh)"

# gogh
alias gogh='bash -c "$(wget -qO- https://git.io/vQgMr)" '

# starship
eval "$(starship init zsh)"

# neovim
alias vim=nvim
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# exaa
alias ls=exa

# bat
alias cat=bat

# default
alias tdef="/usr/local/bin/default.sh"
