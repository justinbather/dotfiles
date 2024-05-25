# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#load powerlevel10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

#load auto suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#load zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#better history suggestions
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignoredups
setopt hist_verify

# up key
bindkey "^[[A" history-search-backward
#down key
bindkey "^[[B" history-search-forward

#eza alias - better ls
alias ls="eza --icons=always --grid --group-directories-first"

#zoxide alias - better cd
alias cd="z"
eval "$(zoxide init zsh)"

#zconfig aliases
alias zconfig="nvim ~/.zshrc"
alias rsconfig="source ~/.zshrc"

#git alias
alias ga="git add ."
alias gc="git commit -am"
alias gp="git push"

#tmux alias
alias tm="tmux a -t"


export PATH=$PATH:/usr/local/bin/kubectl
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/Users/justinbather/nvim-macos/bin
export PATH=$PATH:/Users/justinbather/opt/homebrew/bin
export PATH=$PATH:/Users/justinbather/Desktop/Projects/pegasus
export PATH=$PATH:/Applications/Docker.app/Contents/Resources/bin/

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
