#!/bin/sh

function brewCaskInstall() {
    printf "* Installing %s ... \n" $1
    brew cask install $1
    printf "* Done \n\n"
}

function brewInstall() {
    printf "* Installing %s ... \n" $1
    brew install $1
    printf "* Done \n\n"
}

echo "**** Installing Homebrew..."
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "**** Installing brew cask..." # UI installation that brew doesn't natively handle
# brew tap caskroom/cask

# Software
echo "**** Installing Firefox"
brewCaskInstall firefox
brewCaskInstall iterm2
brewCaskInstall zettlr
brewCaskInstall macdown

# Dev tools
brewInstall gnu-sed # SED for mac, As original sed add a newline at the end of files https://www.gnu.org/software/sed/
brewInstall fzf # Fuzzy search https://github.com/junegunn/fzf
brewInstall bat # Previsualization for terminal https://github.com/sharkdp/bat
brewInstall moreutils # utils for mac https://rentes.github.io/unix/utilities/2015/07/27/moreutils-package/
brewInstall cowsay # cowsay for mac
brewInstall fd # Much faster than Find, useful for fzf https://github.com/sharkdp/fd
brewInstall tree # https://michaelsoolee.com/tree-tool/
brewInstall ripgrep # Blazing fast grep
brewInstall pv # Pipe viewer
brewInstall tmux # tmux https://github.com/tmux/tmux/wiki 

$(brew --prefix)/opt/fzf/install # Fzf needs an extra step for the installation, interactive
