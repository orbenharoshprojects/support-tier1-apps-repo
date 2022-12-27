clear 
echo  "Hey! let's get it strated in here"

echo '
                /|         ,
              ,///        /|
             // //     ,///
            // //     // //
           // //     || ||
           || ||    // //
           || ||   // //
           || ||  // //
           || || || ||
           \\,\|,|\_//
            \\)\)\\|/
            )-."" .-(
           //^\` `/^\\
          //  |   |  \\
        ,/_| 0| _ | 0|_\,
      /`    `"=.v.="`    `\
     /`    _."{_,_}"._    `\
     `/`  ` \  |||  / `  `\`
      `",_  \\=^~^=//  _,"`
          "=,\\-=-//="
               ---
  '

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && yes | brew <...>
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

