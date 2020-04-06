#!/bin/bash

# install xcode dev code
xcode-select --install

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# python
brew install pyenv
pyenv install 3.7.6

# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install 11.10.1

# ruby
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# brew tap homebrew/cask-fonts
# brew cask install font-hack-nerd-font
# set iterm preferences
# - use hack nerd font under text
# - use color profile from old computer
# - tab settings
# - shortcuts under keys
source ~/.zshrc

# set up ssh (github, etc)
ssh-keygen -t rsa -b 4096 -C "jack@toumey.io"
pbcopy < ~/.ssh/id_rsa.pub
# copy ssh key into github website
# enable sso if necessary

# more steps
# - copy the gitconfig file
