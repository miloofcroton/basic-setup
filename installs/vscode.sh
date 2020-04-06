#!/bin/bash

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
