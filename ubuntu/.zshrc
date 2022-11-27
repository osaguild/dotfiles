export PATH=/usr/local/bin:$HOME/.cargo/env:$HOME/go/bin:$PATH
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

echo "# Setup Cosmovisor"
export DAEMON_NAME=gaiad
export DAEMON_HOME=$HOME/.gaia
export DAEMON_ALLOW_DOWNLOAD_BINARIES=true
export DAEMON_LOG_BUFFER_SIZE=512
export DAEMON_RESTART_AFTER_UPGRADE=true
export UNSAFE_SKIP_BACKUP=true

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