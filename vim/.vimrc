syntax on

" Fix to strange Replace-mode Behaviour on vim startup
set t_u7=

" if there is a .vimrc inside a directory and we type "vim .", it will
" automatically source that file
set exrc
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=100
highlight ColorColumn ctermbg=lightcyan guibg=blue


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
Plug 'morhetz/gruvbox'

Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'

call plug#end()

" Use the coloscheme from gruvbox
colorscheme gruvbox
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
