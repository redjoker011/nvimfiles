# nvimfiles
Neo Vim Evolving Configurations

## Pre-requisites

**neovim nightly >= v0.5.0**

```
# Unlink neovim if already installed
brew unlink neovim

# Install latest
brew install --HEAD neovim
```
[neovim installation](https://github.com/neovim/neovim/wiki/Installing-Neovim)

**lua rocks**

```
brew install luarocks
```

[luarocks installation](https://github.com/luarocks/luarocks#installing)

**fzf(fuzzy finder)**

```
brew install fzf
```

[fzf installation](https://github.com/junegunn/fzf#installation)

# Installation

**Clone Repository and set as default nvim config**

`git clone git@github.com:redjoker011/nvimfiles.git ~/.config/nvim`

**Install Plugins using Plug**

`nvim +PlugInstall`

or open neovim and run `:PlugInstall` command

# Inspiration
[Vimways 2018 Attack of the 5,000-line vimrc](https://vimways.org/2018/from-vimrc-to-vim)
[Directory Structure](https://gist.github.com/nelstrom/1056049/784e252c3de653e204e9e128653010e19fbd493f)
