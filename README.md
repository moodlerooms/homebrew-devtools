# Introduction

This is a Homebrew tap to assist with installing development tools.

# Dependencies

This Homebrew tap requires the following to be installed:

* Install [Homebrew](https://brew.sh).
* Install [Homebrew Cask](https://caskroom.github.io).  At time of writing, install command is at the end of homepage.

# Installing casks

Use the following commands to install the casks provided by this Homebrew tap:

```bash
    brew tap moodlerooms/devtools
    brew cask install mr-vagrant
    brew cask install mr-virtualbox
```

# Updating casks

To upgrade installed tools, use the following commands:

```bash
    brew update
    brew cask upgrade mr-vagrant
    brew cask upgrade mr-virtualbox
```

# Updating this tap

These are instructions for how to update this project's casks.

* Go to the following casks:
  * [VirtualBox](https://github.com/caskroom/homebrew-cask/blob/master/Casks/virtualbox.rb)
  * [Vagrant](https://github.com/caskroom/homebrew-cask/blob/master/Casks/vagrant.rb)
* Navigate the history of each cask to find the correct version.
* Copy the cask into this project, making the following changes:
  * Rename the cask by prefixing "mr-" to the name.
  * Remove the `appcast` lines (don't care about updates).
