clear 
echo  "Hey! let's get you all the applications u need.
          This script will install all of the needed and recommended applications for you, 
              You can review all of the installed applications in the text file that will be installed in this path"

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

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
set timeout -60

echo "Updating homebrew..."
brew update

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

echo "Installing Docker"
brew install --cask docker

echo "Installing Python 3"
brew install python

echo "Installing pip"
python3 -m pip3 install --upgrade pip

echo "Installing Zoom"
brew install --cask zoom

echo "Installing Grammarly"
brew install --cask grammarly

echo "Installing Visual Studio Code"
brew install --cask visual-studio-code

echo "Installing Postman"
brew install --cask postman

echo "Installing Discord"
brew install --cask discord

echo "Installing Sequel Ace"
brew install --cask sequel-ace

echo "Done, you are all set to go to the next step, see ya later alligator!

           .-._   _ _ _ _ _ _ _ _
.-''-.__.-'00  '-' ' ' ' ' ' ' ' '-.
'.___ '    .   .--_'-' '-' '-' _'-' '._
  V: V 'vv-'   '_   '.       .'  _..' '.'.
   '=.____.=_.--'   :_.__.__:_   '.   : :
           (((____.-'        '-.  /   : :
                              (((-'\ .' /
                           _____..'  .'
                          '-._____.-'

"


