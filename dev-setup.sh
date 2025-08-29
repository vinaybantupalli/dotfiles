#!/bin/bash

echo "Setting up development environment..."

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "This script is designed for macOS"
    exit 1
fi

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh already installed"
fi

# Install SDKMAN
if [ ! -d "$HOME/.sdkman" ]; then
    echo "Installing SDKMAN..."
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
else
    echo "SDKMAN already installed"
fi

# Install Node.js and npm via Homebrew
if ! command -v node &> /dev/null; then
    echo "Installing Node.js and npm..."
    brew install node
else
    echo "Node.js already installed"
fi

# Essential development tools
echo "Installing essential development tools..."

# Version control and utilities
brew install --quiet git git-lfs
brew install --quiet wget curl jq tree

# Text editors and IDEs
brew install --quiet vim neovim

# Development languages/runtimes
# brew install --quiet python3 go rust

# Database tools
# brew install --quiet postgresql redis

# Container and cloud tools
# brew install --quiet docker
# brew install --quiet awscli

# Terminal enhancements
# brew install --quiet fzf ripgrep bat exa
# brew install --quiet htop btop

# Install useful cask applications
# echo "Installing GUI applications..."
# brew install --cask --quiet visual-studio-code
# brew install --cask --quiet iterm2
# brew install --cask --quiet docker
# brew install --cask --quiet postman

# Setup preferences for iterm2
# cp com.googlecode.iterm2.plist ~/Library/Preferences/


# Install popular npm packages globally
# echo "Installing global npm packages..."
# npm install -g yarn pnpm
# npm install -g typescript ts-node
# npm install -g eslint prettier
# npm install -g nodemon concurrently

# Install Java via SDKMAN
# echo "Installing Java via SDKMAN..."
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# sdk install java 21.0.2-tem
# sdk install maven
# sdk install gradle

# Install Python packages
# echo "Installing Python packages..."
# pip3 install --user virtualenv pipenv poetry
# pip3 install --user jupyter notebook
# pip3 install --user requests beautifulsoup4 pandas numpy