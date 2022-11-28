# set up for ubuntu

## download
- download UTM from [here](https://mac.getutm.app/)
- download Ubuntu from [here](https://ubuntu.com/download/server)

## recommend setting for UTM
- CPU: 4
- Memory: 4GB
- Storage: 128GB

## setting for ubuntu
```
sudu apt install git
git clone https://github.com/osaguild/dotfiles
cd dotfiles
./install_ubuntu.sh
reboot
source $HOME/.cargo/env
```
