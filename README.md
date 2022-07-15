version: v1.0.0

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

**RIP Grep

```
brew install ripgrep
```

[ripgrep installation](https://github.com/BurntSushi/ripgrep#installation)

**.Net 6**

```
brew install --cask dotnet
```

https://dotnet.microsoft.com/en-us/download/dotnet

**Rbenv**

```ruby
brew install rbenv ruby-build

# Install your preferred ruby version
```

**Solargraph**

```
gem install solargraph
```

**Vim Plug**

Download plug.vim and put it in the "autoload" directory.

[vim plug installation](https://github.com/junegunn/vim-plug#installation)

# Installation

**Clone Repository and set as default nvim config**

`git clone git@github.com:redjoker011/nvimfiles.git ~/.config/nvim`

**Install Plugins using Plug**

`nvim +PlugInstall`

or open neovim and run `:PlugInstall` command

Note: You also need to install [nerd-font](https://github.com/ryanoasis/nerd-fonts) in order for icons to work

Install Haskplex Nerd Font

```
brew install font-haskplex
brew install font-haskplex-nerd
```

**Set Haskplex Nerd as Iterm Font**

`Iterm -> User Preferences -> Profiles`

select `Text` menu and select `Haskplex Nerd` font as preferred font

# Language Server and Completion

We are utilizing [Ale](https://github.com/dense-analysis/ale) and [Coc Nvim](https://github.com/neoclide/coc.nvim) for language server, completion, syntax
linting and fixing. The information below displays the plugin and language
servers that runs on them

- Coc
  - Solargraph
  - TsServer
  - Vetur(Vuejs)

- ALE
  - Omnisharp-vim

https://github.com/dense-analysis/ale#faq-coc-nvim

# Inspiration
[Vimways 2018 Attack of the 5,000-line vimrc](https://vimways.org/2018/from-vimrc-to-vim)
[Directory Structure](https://gist.github.com/nelstrom/1056049/784e252c3de653e204e9e128653010e19fbd493f)
