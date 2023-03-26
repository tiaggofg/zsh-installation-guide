# Guia de instalação do ZSH no Ubuntu

O Z-Shell muito conhecido como ZSH é um interpretador de comando UNIX que oferece vários recursos que podem facilitar muito a vida de que utiliza a linha de comando.

Para instalar o ZSH no ubuntu basta executar o comando abaixo no terminal

```
sudo apt install -y zsh
```

Após ter instalado o zsh é necessário instalar o framework oh-my-zsh Utilizando `curl`basta executar

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Posteriormente basta tornar o ZSH o shell padrão do Ubuntu com o comando abaixo. Para que assim, toda vez que o terminal for aberto já seja executado o zsh ao invés do bash.

```
chsh -s $(which zsh)
```

## Adicionando plugins

Podemos adicionar vários puglins no zsh e esses podem potencializar o uso do shell. Nesse caso, utilizaremos os pluins de syntax highlighting e authsuggestions.

### zsh-autosuggestions & zsh-syntax-highlighting

Primeiro fazemos o download dos plugins usando `git` e colocamos os arquivos na posta de plugins do oh-my-zsh `${ZSH_CUSTOM}/pugins`

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Após é isso necessário ativar os plugins no arquivo `.zshrc` e adicionando os plugins em

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