# Introduction

This is a Homebrew tap to assist with installing development tools.

# Usage

    brew tap moodlerooms/devtools
    brew cask install mr-vagrant
    brew cask install mr-virtualbox

# Updating formula

1. Go to the following casks:
  * [VirtualBox](https://github.com/caskroom/homebrew-cask/blob/master/Casks/virtualbox.rb)
  * [Vagrant](https://github.com/caskroom/homebrew-cask/blob/master/Casks/vagrant.rb)
2. Navigate the history of each cask to find the correct version.
3. Copy the cask into this project, making the following changes:
  * Rename the cask by prefixing "mr-" to the name.
  * Remove the `appcast` lines (don't care about updates).
