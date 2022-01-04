" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

" colorscheme
"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
" Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'

" Telescope deps
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig'

" File Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Tree-sitter - code highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" Use treesitter to autoclose and autorename html tag
Plug 'windwp/nvim-ts-autotag'
" toolkit for html / css
Plug 'mattn/emmet-vim'

" autocompletion, static analysis and refactoring library for Python
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Syntax highlighting for JSON
Plug 'kevinoid/vim-jsonc'

" Harpoon
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

" Java and debugger
Plug 'mfussenegger/nvim-jdtls'
Plug 'mfussenegger/nvim-dap'

" Markdown preview
Plug 'ellisonleao/glow.nvim'
Plug 'ap/vim-css-color'

" syntax highlighting for justfiles
Plug 'NoahTheDuke/vim-just'
call plug#end()

let mapleader = " "

" no caching for ctrl+p, 'cause its fast enough
let g:ctrlp_use_caching=0

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>bd :ls<CR>:bd<space>
nnoremap <leader>[ :bprev<CR>
nnoremap <leader>] :bnext<CR>

" resize vertical panes
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Keep Visual Mode after indenting with > or <
vmap < <gv
vmap > >gv

" remap for toggle terminal
nnoremap <leader>ton :terminal<CR>
tnoremap <Esc> <C-\><C-N>
