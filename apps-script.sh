#color range: syntax ex: echo -e "${BLUE}Welcome ${WHITE}to ${RED}France" & bold -> echo -e "\033[1;33mBold text"
BLUE='\033[0;44m'
BLACK='\033[0;30m'
WHITE='\033[0;30;47m'
RED='\033[0;41m'


printf '\e[48;5;%dm ' {0..255}; printf '\e[0m \n'
echo -e "${WHITE}Hey! ${WHITE}let's ${WHITE}get ${WHITE}it ${WHITE}strated ${RED}in ${RED}here"


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

echo "Installing iterm2...(A good alternative to the MacOS Terminal)"
brew install --cask caskroom/cask/iterm2

echo "Installing sublime-text...(A text editor for Mac with many helpful plugins and great package manager to install those plugins easily)"
brew install --cask sublime-text

echo "Installing 1clipboard...(If you've used Ditto on Windows and now can't work without clipboard management app )"
brew install --cask 1clipboard

echo "Installing flycut...(Another popular clipboard manager)"
brew install --cask flycut

echo "Installing lightshot...(Screenshot capturing tool)"
brew cask install wine-stable
brew install wget
wget http://app.prntscr.com/build/setup-lightshot.exe

echo "Installing Muzzle App...( Silences notifications while screen sharing is active)"
brew install --cask muzzle

echo "Done!"

