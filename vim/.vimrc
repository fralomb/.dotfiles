syntax on

" Fix to strange Replace-mode Behaviour on vim startup
set t_u7=

" if there is a .vimrc inside a directory and we type "vim .", it will
" automatically source that file
set exrc

" When off, a buffer is unloaded when abandoned.
" When on, the buffer becomes hidden when abandoned
set hidden

" Ring the bell for error messages
set noerrorbells

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu rnu
" No wrapping the line
set nowrap
" Only works with ignorecase option. Overrride the ignorecase option if the
" search pattern contains uppercase characters
" set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=8
" Whether to draw an extra column, useful for linting, git, etc..
set signcolumn=yes
" Set a guideline in the right
set colorcolumn=100
highlight ColorColumn ctermbg=lightcyan guibg=blue

" Highlight results as we search
set incsearch
" disable highlight the result after search
"set nohlsearch


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
"autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \| PlugInstall --sync | source $MYVIMRC
"\| endif

call plug#begin('~/.vim/plugged')

" colorscheme
"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'

" fzf deps
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Telescope deps
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Use the coloscheme from gruvbox
colorscheme gruvbox
"highlight Normal guibg=none
set background=dark

" Allow rg to detect the root and use .gitignore for faster searching
if executable('rg')
  let g:rg_derive_root='true'
endif
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
" let g:netrw_banner=0
let g:netrw_winsize=25
" no caching for ctrl+p, 'cause its fast enough
let g:ctrlp_use_caching=0

" keys remapping
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Move Visual blocks with J and K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keep Visual Mode after indenting with > or <
vmap < <gv
vmap > >gv
