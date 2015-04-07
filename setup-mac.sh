#! /bin/bash

# Thanks to http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

binaries=(
  python3
  node
  git
  pandoc
  zsh
  autojump
)

apps=(
  adapter
  sourcetree
  dropbox
  google-chrome
  firefox
  basictex
  spotify
  vagrant
  iterm2
  virtualbox
  atom
  flux
  sequel-pro
  vlc
  skype
  google-drive
  transmission
)

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

echo "installing binaries..."
brew install ${binaries[@]}
brew cleanup

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "installing homebrew cask..."
brew install caskroom/cask/brew-cask

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
