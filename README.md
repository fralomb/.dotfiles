# .dotfiles
All my configuration files

# Requirements
- stow
- vim
- neovim


# Plugin dependencies
- nvim-treesitter


# NeoVim setup
- build prerequisites
-- https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
- tree sitter and lsp config dependencies
-- c compiler - `sudo apt-get install build-essential`
-- harpoon
-- language servers
--- `TSInstall bash, javascript, python, etc...`
-- install npm
--- `sudo apt-get install nodejs`
-- install specific lsp
--- bash - `npm i -g bash-language-server`
-- telescope deps
--- `apt-get install ripgrep`
-- python-language-server
-- `https://github.com/palantir/python-language-server`
--- jedi
---- `https://github.com/davidhalter/jedi`
---- YouCompleteMe -> `https://github.com/ycm-core/YouCompleteMe#linux-64-bit`
----- install plugin
----- `sudo apt-get install -y build-essential cmake vim-nox python3-dev python3-pip`
----- `sudo apt-get install -y mono-complete golang nodejs default-jdk npm`
----- `cd ~/.vim/plugged/YouCompleteMe`
-- Java language server
--- `https://github.com/mfussenegger/nvim-jdtls`
--- `https://github.com/eclipse/eclipse.jdt.ls#installation`
--- `https://github.com/mfussenegger/nvim-dap`
--- `https://github.com/microsoft/vscode-java-test`
--- apt-get install -y maven
