# .dotfiles
All the `.dotfiles` needed to configure a machine with my tools 

# Requirements
- stow
- vim
- neovim
- git
- zsh


# Plugin dependencies
- nvim-treesitter


# NeoVim setup
## build prerequisites
`https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites`
## tree sitter and lsp config dependencies
### c compiler
`sudo apt-get install build-essential`
### language servers
- `TSInstall bash, javascript, python, etc...`
- bash language server
  - install npm before `sudo apt-get install nodejs`
  - `npm i -g bash-language-server`
- python language server
  - `https://github.com/palantir/python-language-server`
  - install jedi -- `https://github.com/davidhalter/jedi`
- Java language server
  - `https://github.com/mfussenegger/nvim-jdtls`
  - `https://github.com/eclipse/eclipse.jdt.ls#installation`
  - `https://github.com/mfussenegger/nvim-dap`
  - `https://github.com/microsoft/vscode-java-test`
  - `apt-get install -y maven`
  - `apt-get install -y openjdk-8-jdk`
### vim-cmp
Follow configuration here: `https://github.com/hrsh7th/nvim-cmp`
### YouCompleteMe
- `https://github.com/ycm-core/YouCompleteMe#linux-64-bit`
## Telescope
- `apt-get install ripgrep`
## Harpoon
- `https://github.com/ThePrimeagen/harpoon`
## Glow
- markdown preview
- `https://github.com/ellisonleao/glow.nvim`
## Git
- `apt-get install git`
- `https://github.com/airblade/vim-gitgutter`
## HTML/CSS
- Emmet toolkit for html, css and javascript development
- `https://github.com/mattn/emmet-vim`
- `https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL`
