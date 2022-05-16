syntax on

" When off, a buffer is unloaded when abandoned.
" When on, the buffer becomes hidden when abandoned
"set hidden

" Ring the bell for error messages
set noerrorbells

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
set relativenumber

" No wrapping the line
set nowrap

" Only works with ignorecase option. Overrride the ignorecase option if the
" search pattern contains uppercase characters
" set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=8
" Whether to draw an extra column, useful for linting, git, etc..
set signcolumn=yes
" Set a guideline in the right
set colorcolumn=100

" Highlight results as we search
set incsearch
" disable highlight the result after search
" set nohlsearch

" Give more space for displaying messages.
" set cmdheight=1

" show tabs, empty spaces
set list listchars=tab:»·,trail:· ",eol:¶
