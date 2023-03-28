# Guia de instalação do ZSH no Ubuntu

O Z-Shell muito conhecido como ZSH é um interpretador de comando UNIX que oferece vários recursos que podem facilitar muito a vida de que utiliza a linha de comando.

Para facilitar a instalação e configuração, fiz um script shell para instalar o `zsh` e o framework `oh-my-zsh` assim como alguns plugins. Para executar o script basta clonar esse repositório e executar o arquivo `install-zsh.sh` conforme abaixo

```
./install-zsh.sh
```

Caso queira realizar o processo de instalação manualmente basta seguir os seguintes passos

Instalar o `zsh` 

```
sudo apt install -y zsh
```

Instalar o framework oh-my-zsh Utilizando `curl`

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Tornar o ZSH o shell padrão do Ubuntu. Para que assim, toda vez que o terminal for aberto já seja executado o zsh ao invés do bash.

```
chsh -s $(which zsh)
```

## Adicionando plugins

Apśo instalação do zsh e do oh-my-zsh podemos adicionar vários puglins para potencializar o uso do shell. Por exemplo os pluins zsh syntax highlighting e zsh autosuggestions.

### zsh-autosuggestions & zsh-syntax-highlighting

Para instalar os plugins é necessário fazer o download usando `git` na pasta de plugins do oh-my-zsh `${ZSH_CUSTOM}/pugins`

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Posteriormente basta ativar os plugins no arquivo `.zshrc` adicionando-os em

```
plugins=(
    ... 
    zsh-autosuggestions 
    zsh-syntax-highlighting
)
```

### Spaceship prompt theme

Além dos plugins gosto de utilizar o tema Spasechip. Pois gosto bastante de sua integração com os plugins.

Para instalar esse tema é preciso clonar o projeto para a pasta de temas do framework oh-my-zsh `${ZSH_CUSTOM}/themes`

```
git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
```

E criar um link simbólico para o arquivo `spaceship.zsh-theme` na pasta de temas do oh-my-zsh.

```
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
```

Da mesma forma que com os plugins, também é preciso ativar o tema acessando o arquivo `.zshrc` alterando o atribut `ZSH_THEME` para spaceship conforme abaixo

```
ZSH_THEME="spaceship"
```

## Referências

- https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
- https://ohmyz.sh/
- https://github.com/ohmyzsh/ohmyzsh/wiki/Settings
- https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95
- https://github.com/spaceship-prompt/spaceship-prompt