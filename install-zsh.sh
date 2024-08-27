#!/bin/bash

printf "\n[INF] Installing ZSH...\n"
cd ~ && sudo apt update && sudo apt install -y zsh

printf "\n[INF] Installing oh-my-zsh framework...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""  

# set zsh as default shell
chsh -s $(which zsh)

# init variable zsh_custom and zsh_config_file
zsh_custom_plugins=$HOME/.oh-my-zsh/custom/plugins
zsh_config_file=$HOME/.zshrc

printf "\n[INF] Installing Autosuggestions and Syntax Highlighting plugins...\n"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $zsh_custom_plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_custom_plugins/zsh-syntax-highlighting

# activate the plugins in the .zshrc file
sed -i 's/^plugins=(/plugins=(zsh-syntax-highlighting zsh-autosuggestions /' $zsh_config_file

printf "\n[INF] Installing Starship theme...\n"
curl -sS https://starship.rs/install.sh | sh

# config shell to initialize starship
echo eval "$(starship init zsh)" >> $zsh_config_file

printf "\n[INF] Installing firacode font...\n"
sudo apt install -y fonts-firacode
