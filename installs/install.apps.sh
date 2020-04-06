#!/bin/bash

# Postgres.app
# if [[ ! "$(which postgres)" =~ Postgres.app ]]; then
#   read -p "${bold}Wanna install Postgres.app?${normal} [Yn]: " choice
#   if [ "$choice" = 'Y' ]; then
#     sleep $pause
#     echo 'Downloading Postgres.app disk image from Github...'
#     if [ -z ${dry+not_set} ]; then
#       latest_pg='https://github.com/PostgresApp/PostgresApp/releases/download/v2.3.3e/Postgres-2.3.3e-12.dmg'
#       tmpfile='/tmp/pg_latest.dmg'
#       curl -\# -L -o $tmpfile $latest_pg

#       echo 'Mounting Postgres.app disk image...'
#       output=$(hdiutil mount $tmpfile)
#       volume_dir=$(echo ${output##* } | xargs ) ### get last word in string (volume dir) and trim leading whitespaces

#       echo 'Copying app into /Applications'
#       cp -R $volume_dir/Postgres.app /Applications

#       echo 'Unmounting disk image and removing tmpfile...'
#       hdiutil unmount $volume_dir
#       rm $tmpfile

#       echo 'Adding Postgres.app cli tools to $PATH...'
#       pg_bin='/Applications/Postgres.app/Contents/Versions/latest/bin'
#       sudo mkdir -p /etc/paths.d && echo $pg_bin | sudo tee /etc/paths.d/postgressapp
#     fi
#   fi
# fi


# from website
# 4K Video Downloader
https://www.4kdownload.com/
# Cisco Webex Meetings
https://www.webex.com/downloads.html
# Command-Tab Plus
https://noteifyapp.com/command-tab-plus/
# Discord
https://discordapp.com/
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
# Docker
https://hub.docker.com/editions/community/docker-ce-desktop-mac/
# virtualbox
https://www.virtualbox.org/wiki/Downloads
# Muzzle
https://muzzleapp.com/


# set up list
# - sign in to applications
#     - mail
#     - slack
#     - firefox
# - set up desktop
#     - dock
#     - bar
# - copy iterm settings
# - copy postman configs to /.postman and set Postman to look for configs there
# - setup screenshot shortcut
# - disable workspace shortcuts for OS
# - give proper permissions to apps in security
# - make sure correct apps start at startup
