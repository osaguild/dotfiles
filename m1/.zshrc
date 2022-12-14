export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.nvm/versions/node/v16.15.1/bin:/System/Cryptexes/App/usr/bin
export LANG=en_US.UTF-8
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "peco/peco"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "mrowa44/emojify", as:command
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
zplug load