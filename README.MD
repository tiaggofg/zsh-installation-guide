# Guia de instalação do ZSH

O Z-Shell muito conhecido como ZSH é um interpretador de comandos UNIX que oferece vários recursos facilatam muito a vida de quem utiliza a linha de comando.

Para economizar tempo durante a instalação e configuração, fiz um script shell para instalar o `zsh` e o framework `oh-my-zsh` assim como alguns plugins. O script também irá realizar a instalação do tema Starship e da fonte firacode. Para executar o script basta clonar esse repositório e executar o arquivo `install-zsh.sh` conforme abaixo.

```
$ sudo ./install-zsh.sh
```

Caso queira realizar o processo de instalação manualmente basta seguir os seguintes passos

Instalar o `zsh` 

```
$ sudo apt install -y zsh
```

Instalar o framework oh-my-zsh Utilizando `curl`

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Tornar o ZSH o shell padrão do Ubuntu. Para que assim, toda vez que o terminal for aberto já seja executado o zsh ao invés do bash.

```
$ chsh -s $(which zsh)
```

## Adicionando plugins

Apśo instalação do zsh e do oh-my-zsh podemos adicionar vários puglins para potencializar o uso do shell. Por exemplo os pluins zsh syntax highlighting e zsh autosuggestions.

### zsh-autosuggestions & zsh-syntax-highlighting

Para instalar os plugins é necessário fazer o download usando `git` na pasta de plugins do oh-my-zsh `${ZSH_CUSTOM}/pugins`

```
$ git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

```
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Posteriormente basta ativar os plugins no arquivo `.zshrc` adicionando-os em

```
plugins=(
    ... 
    zsh-autosuggestions 
    zsh-syntax-highlighting
)
```

### Starship theme

Além dos plugins uso também o tema Starship. Pois gosto bastante de sua integração com os plugins.

A instalação é realizada de modo muito simples. Basta executar o script `shell` de instalação disponibilizado no site oficial do Starship com o seguinte comando

```
$ curl -sS https://starship.rs/install.sh | sh
```
Após isso, basta inicializar o tema com o seguinte comando

```
$ eval "$(starship init zsh)"
```

### Firacode font

Pode ser que alguns dos ícones não sejam redenrizados em seu terminal. E caso tenha esse problema você pode instalar a fonte `firacode` com o seguinte comando

```
$ sudo apt install -y fonts-firacode
```

## Referências

- https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
- https://ohmyz.sh/
- https://github.com/ohmyzsh/ohmyzsh/wiki/Settings
- https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95
- https://github.com/spaceship-prompt/spaceship-prompt
- https://github.com/tonsky/FiraCode