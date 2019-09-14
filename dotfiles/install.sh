# Install the required dependencies

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# lsd setup
brew install lsd
# Install Homebrew Cask Fonts
brew tap homebrew/cask-fonts
# Install Hack Nerd Font
brew cask install font-hack-nerd-font 

# Configure iTerm2 Profile Text Font
# iTerm2 > Preferences > Profiles > Text > Non-ASCII-Font > Change Font

# vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# run :PluginInstall in vim to install plugins
