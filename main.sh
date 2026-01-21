#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

DOTFILES="https://github.com/ballking123456/configi."
BRANCH="main"
THEME="https://github.com/lassekongo83/adw-gtk3/releases/download/v6.4/adw-gtk3v6.4.tar.xz"
dn="/dev/null"

archUserRep() {
  clear && echo "Установка AUR..."
  pacman -S git base-devel --noconfirm --needed &> $dn
  git clone https://aur.archlinux.org/yay-bin.git &> $dn
  cd yay-bin
  makepkg-si --noconfirm &> $dn
  cd ..
  rm -rf yay-bin
  clear && echo "Aur Установлен!" && sleep 0.2
}

packages() {
  clear
  arr=("|" "/" "—" "\\")

  packages=(
    waybar
    wofi
    thunar
    matugen
    rofi
  )

  for ((cnt=0; cnt<${#packages[@]}; cnt++)); do
    pkg=${packages[$cnt]}

    pacman -S --noconfirm --needed $pkg > $dn 2>&1 &

    pid=$! 

    i=0
    while kill -0 $pid 2>/dev/null; do
      clear
      echo -e " ${arr[$i]} Установка Пакетов: $(( (cnt*100)/${#packages[@]} ))% \n   Установка: $pkg"
      sleep 0.1
      ((i=(i+1)%${#arr[@]}))
    done

    wait $pid
  done

  clear && echo "Все Пакеты Установлены!" && sleep 0.2
}

gitCopy() {
  clear && echo "Копирование Дот-Файлов..."
  git clone $DOTFILES -b $BRANCH &> $dn
  cp -r ~/configi./* ~/.config
  rm -rf configi.
  clear && echo "Конфиги скопированы!" && sleep 0.2
}

theme() {
  clear && echo "Установка Темы..."
  yay -S wget --noconfirm --needed &> $dn
  mkdir ~/.themes
  cd ~/.themes
  wget -O ~/.themes/adw-gtk3.tar.xz* https://github.com/lassekongo83/adw-gtk3/releases/download/v6.4/adw-gtk3v6.4.tar.xz &> $dn
  tar -xvf ~/.themes/'adw-gtk3.tar.xz*' &> $dn 
  rm adw-gtk3.tar.xz*
  gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
  cd
  clear && echo "Тема установлена!" && sleep 0.2
}

archUserRep
packages
gitCopy
theme

