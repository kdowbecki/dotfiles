# NeoVim

Minimal [NeoVim](https://neovim.io/) configuration.


## Installation

Copy the `init.vim` file:

```
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim
```

Install Vim-Plug to manage plugins:

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

And load the actual plugins:

```
vim ~/.config/nvim/init.vm
:source %
:PlugInstall
```

