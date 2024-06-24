# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fvi() {
  local file
  file=$(find . | fzf)
  vi "$file"
}

# zoxide
eval "$(zoxide init zsh)"

# starship
eval "$(starship init zsh)"

# neovim
alias vim=lvim
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# exa
alias ls=exa

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

#tmux source ~/.tmux.conf

function peco-src () {
  local selected_dir=$(ghq list -p | peco --prompt="repositories >" --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

export EDITOR=nvim
export PATH="$HOME/.local/bin:$PATH"
