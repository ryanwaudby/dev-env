# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NODE_OPTIONS="--max-old-space-size=16384"

export PATH="$PATH:/path/to/depot_tools"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export NVM_LAZY=1
plugins=(
  git
)

alias vim='nvim'
alias ll='ls -la --color=auto'
alias ls='ls --color=auto'

alias nw="cd ~/workspace"
alias nt="cd ~/workspace/tv-client/apps/telly"
alias ni="cd ~/workspace/tv-client/packages/integrations"
alias ntv="cd ~/workspace/tv-client"
alias ntt="cd ~/workspace/tv-client/apps/tap"
alias nts="cd ~/workspace/tv-client/apps/sounds"
alias ntp="cd ~/workspace/tv-client/packages"
alias nde="cd ~/workspace/dev-env"

alias ff="fzf-tmux -p | xargs nvim"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/ryanwaudby/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
