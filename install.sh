#!/bin/sh

pacman -Syu --noconfirm

pacman -S --noconfirm nodejs
pacman -S --noconfirm npm
pacman -S --noconfirm nginx

pacman -Scc --noconfirm

npm install -g @vue/cli
npm install -g javascript-typescript-langserver

curl -o /root/.emacs.d/custom/awesome-tab.el https://raw.githubusercontent.com/manateelazycat/awesome-tab/master/awesome-tab.el

emacs --daemon
emacsclient -e '(kill-emacs)'
