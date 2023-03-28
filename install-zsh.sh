#!/bin/bash

# z-shell installing
cd ~ && sudo apt install -y zsh

# installing oh-my-zsh framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# set zsh as a default shell
chsh -s $(which zsh)

# init variable zsh_custom and zsh_config_file
zsh_custom="~/.oh-my-zsh/custom"
zsh_config_file=".zshrc"

# cloning the zsh-syntax-highlight and zsh-autosegguestions to the zsh_custom 
git clone https://github.com/zsh-users/zsh-autosuggestions.git $zsh_custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_custom/plugins/zsh-syntax-highlighting

# activate the plugins in the .zshrc file
sed -i 's/^plugins=(/plugins=(zsh-syntax-highlight zsh-autossuggestions /' $zsh_config_file

# installing the starship theme
curl -sS https://starship.rs/install.sh | sh

# config shell to initialize starship
eval "$(starship init zsh)"

# TODO: installation of the firacode font

# spaceship theme in case you want to install it

# cloning the spaceship theme
#git clone https://github.com/spaceship-prompt/spaceship-prompt.git $zsh_custom/themes/spaceship-prompt

# cerating the symlink to the spaceship theme
#ln -s $zsh_custom/themes/spaceship-prompt/spaceship.zsh-theme $zsh_custom/themes/spaceship.zsh-theme

# activating the spacehip theme
#sed -i 's/^ZSH_THEME=.*/ZSH_THEME="spaceship"/' ~/.zshrc
