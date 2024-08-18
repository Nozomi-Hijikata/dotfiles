# aliases
alias g='git'
alias gl="g l-one"
alias ls="eza"
alias ll='ls -l'
alias cat="bat"
alias brew-intel='arch -x86_64 /usr/local/bin/brew'
alias lpath="echo \$PATH | tr ':' '\n' | sort | uniq"
alias dcs="docker-compose"
alias flutter='fvm flutter'

# driver
alias drspec="docker compose exec puma bundle exec rspec"
alias rdebug="docker compose exec puma bundle exec rdbg -O -n --port 9000 --host 0.0.0.0 -c -- bundle exec rspec"
alias rconnect="rdbg -A 9000"

# path settings
export PATH="/usr/local/bin:$PATH"
if [ "$(uname -m)" = "arm64" ]; then
  # arm64
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/bin:$PATH"
  # export PATH="/usr/local/bin:$PATH"
  export PATH="$PATH:/Users/hijikatanozomi/Library/Python/3.9/bin"
  eval "$(rbenv init - zsh)"
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
else
  # x86_64
  eval "$(/usr/local/bin/brew shellenv)"
  export PATH="$PATH:/Users/hijikatanozomi/Library/Python/3.9/bin"
  eval "$(rbenv init - zsh)"
fi


# pure settings
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure


# zsh-autosuggestions settings
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=~/.rbenv/bin:$PATH
source /Users/hijikatanozomi/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/node@16/bin:$PATH"

# JHスクリプトを設置
export PATH="$PATH:/Users/hijikatanozomi/environment/utils"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/hijikatanozomi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/hijikatanozomi/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# functions
setaws() {
  export AWS_PROFILE=$1
  echo "AWS_PROFILE=$AWS_PROFILE has been set."
}

# rust
export PATH="$HOME/.cargo/env:$PATH"

# go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
