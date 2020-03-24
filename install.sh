# script


# install xcode dev thing
# ??

# install brew and general reqs
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install openssl readline sqlite3 xz thefuck gpg mas


# set up list
# - install applications
#     - sign in to applications
#         - mail
#         - slack
#         - firefox
# - set up desktop
#     - dock
#     - bar
# - copy iterm settings

# install applications

# app store
# 1Password 7
# Caffeinated
# CopyClip 2
# DaisyDisk
# HabitMinder
# Image2Icon
# Keynote
# Numbers
# Pages
# Slack
# Telegram
# Time Out
# WhatsApp

# run on old comp:
# mas list
mas install 409183694 &&
mas install 992115977 &&
mas install 402592703 &&
mas install 803453959 &&
mas install 409201541 &&
mas install 1147396723 &&
mas install 1026349850 &&
mas install 747648890 &&
mas install 1362171212 &&
mas install 411643860 &&
mas install 409203825 &&
mas install 1333542190


# from website
# 4K Video Downloader
https://www.4kdownload.com/
# Cisco Webex Meetings
https://www.webex.com/downloads.html
# Command-Tab Plus
https://noteifyapp.com/command-tab-plus/
# Firefox
https://www.mozilla.org/en-US/firefox/new/
# Flexiglass
https://nulana.com/flexiglass/
# Freeplane
https://www.freeplane.org/wiki/index.php/Home
# Keybase
https://keybase.io/
# Postman
https://www.postman.com/
# ProtonVPN
https://protonvpn.com/download
# Signal
https://www.signal.org/
# Spotify
https://www.spotify.com/us/
# Swinsian
https://swinsian.com/
# Transmission
https://transmissionbt.com/download/
# VLC
https://www.videolan.org/vlc/
# Vanilla
https://matthewpalmer.net/vanilla/
# Visual Studio Code
https://code.visualstudio.com/Download
# calibre
https://calibre-ebook.com/download_windows
# iTerm
https://iterm2.com/



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
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
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

# setup vscode
# - run the 'add code to path' command
# - copy snippets, keybindings.json, settings.json
# - run on old computer:
# code --list-extensions | xargs -L 1 echo code --install-extension > vscodescript.txt
# - run on new comp (using values from prev command)
code --install-extension 4ban.kraken &&
code --install-extension akamud.vscode-theme-onedark &&
code --install-extension Cardinal90.multi-cursor-case-preserve &&
code --install-extension castwide.solargraph &&
code --install-extension christian-kohler.npm-intellisense &&
code --install-extension christian-kohler.path-intellisense &&
code --install-extension CoenraadS.bracket-pair-colorizer-2 &&
code --install-extension Dart-Code.dart-code &&
code --install-extension Dart-Code.flutter &&
code --install-extension dbaeumer.vscode-eslint &&
code --install-extension donjayamanne.githistory &&
code --install-extension DotJoshJohnson.xml &&
code --install-extension dsznajder.es7-react-js-snippets &&
code --install-extension eamodio.gitlens &&
code --install-extension ecmel.vscode-html-css &&
code --install-extension EditorConfig.EditorConfig &&
code --install-extension eg2.vscode-npm-script &&
code --install-extension Equinusocio.vsc-community-material-theme &&
code --install-extension Equinusocio.vsc-material-theme &&
code --install-extension equinusocio.vsc-material-theme-icons &&
code --install-extension esbenp.prettier-vscode &&
code --install-extension formulahendry.auto-close-tag &&
code --install-extension formulahendry.auto-rename-tag &&
code --install-extension joelday.docthis &&
code --install-extension JounQin.vscode-mdx &&
code --install-extension jpoissonnier.vscode-styled-components &&
code --install-extension lllllllqw.jsdoc &&
code --install-extension marcoms.oceanic-plus &&
code --install-extension mhutchie.git-graph &&
code --install-extension mohsen1.prettify-json &&
code --install-extension ms-azuretools.vscode-docker &&
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools &&
code --install-extension ms-python.python &&
code --install-extension ms-vscode.Go &&
code --install-extension ms-vscode.vscode-typescript-tslint-plugin &&
code --install-extension msjsdiag.vscode-react-native &&
code --install-extension Orta.vscode-jest &&
code --install-extension PKief.material-icon-theme &&
code --install-extension Prisma.vscode-graphql &&
code --install-extension rebornix.ruby &&
code --install-extension redhat.java &&
code --install-extension redhat.vscode-yaml &&
code --install-extension rust-lang.rust &&
code --install-extension salbert.comment-ts &&
code --install-extension shd101wyy.markdown-preview-enhanced &&
code --install-extension Shelex.vscode-cy-helper &&
code --install-extension silvenon.mdx &&
code --install-extension sleistner.vscode-fileutils &&
code --install-extension tht13.python &&
code --install-extension tomoki1207.pdf &&
code --install-extension Tyriar.lorem-ipsum &&
code --install-extension vadistic.mdx-inline &&
code --install-extension VisualStudioExptTeam.vscodeintellicode &&
code --install-extension vncz.vscode-apielements &&
code --install-extension vscjava.vscode-java-debug &&
code --install-extension vscjava.vscode-java-dependency &&
code --install-extension vscjava.vscode-java-test &&
code --install-extension waderyan.gitblame &&
code --install-extension wayou.vscode-todo-highlight &&
code --install-extension wingrunr21.vscode-ruby &&
code --install-extension wix.glean &&
code --install-extension wmaurer.change-case &&
code --install-extension xyc.vscode-mdx-preview &&
code --install-extension yzhang.markdown-all-in-one &&
code --install-extension Zignd.html-css-class-completion &&
code --install-extension zxh404.vscode-proto3



# - install more tools
#     - docker
#     - kubernetes
