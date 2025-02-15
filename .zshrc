# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:/path/to/depot_tools"

export NVM_LAZY=1
plugins=(
  git
)

alias vim='nvim'
alias ll='ls -la'

alias nw="cd ~/workspace"
alias nt="cd ~/workspace/tv-client/apps/telly"
alias ni="cd ~/workspace/tv-client/packages/integrations"
alias ntv="cd ~/workspace/tv-client"
alias ntt="cd ~/workspace/tv-client/apps/tap"
alias nts="cd ~/workspace/tv-client/apps/sounds"
alias ntp="cd ~/workspace/tv-client/packages"
alias nde="cd ~/workspace/dev-env"

function ff() {
  if [ -z "$2" ]
  then
    ag -g $1 | nl
  else
    ag -g $1 | sed -n "${2}p" | xargs nvim
  fi
}

export ff
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
