#!/bin/bash

echo "\n[INF] Installing ZSH..."
cd ~ && sudo apt update && sudo apt install -y zsh

echo "\n[INF] Installing oh-my-zsh framework..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# set zsh as default shell
chsh -s $(which zsh)

# init variable zsh_custom and zsh_config_file
zsh_custom="~/.oh-my-zsh/custom"
zsh_config_file=".zshrc"

echo "\n[INF] Installing Autosuggestions and Syntax Highlighting plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $zsh_custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_custom/plugins/zsh-syntax-highlighting

# activate the plugins in the .zshrc file
sed -i 's/^plugins=(/plugins=(zsh-syntax-highlight zsh-autossuggestions /' $zsh_config_file

echo "\n[INF] Installing Starship theme..."
curl -sS https://starship.rs/install.sh | sh

# config shell to initialize starship
eval "$(starship init zsh)"

echo "\n[INF] Installing firacode font..."
sudo apt install -y fonts-firacode

# spaceship theme in case you want to install it
# cloning the spaceship theme
#git clone https://github.com/spaceship-prompt/spaceship-prompt.git $zsh_custom/themes/spaceship-prompt

# cerating the symlink to the spaceship theme
#ln -s $zsh_custom/themes/spaceship-prompt/spaceship.zsh-theme $zsh_custom/themes/spaceship.zsh-theme

# activating the spacehip theme
#sed -i 's/^ZSH_THEME=.*/ZSH_THEME="spaceship"/' ~/.zshrc
