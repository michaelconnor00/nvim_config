
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

Plug 'Chiel92/vim-autoformat'

Plug 'djoshea/vim-autoread'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'sheerun/vim-polyglot'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" CONFIG
set colorcolumn=100  " Highlight color for wrapping
set encoding=utf8

set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

set relativenumber " show relative line numbers

" Yank to end of line
map Y y$

" Tunr off search highlighting
"set nohls
set smartcase

" Set Proper Tabs
imap <C-Return> <CR><CR><C-o>k<Tab>
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
let python_highlight_all=1

"set showmatch   " Show matching brackets
set gdefault    " use g by default with sed replacement

" Enable highlighting of the current line
"set cursorline

"Ultisnips
" Trigger configuration. Do not use <tab> if it collides
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {"!level": "errors"}                                                                                                                                                                    
let g:syntastic_python_flake8_args = "--ignore=E501,E266,E402"

" Deoplete Settings
let g:deoplete#enable_at_startup = 1
let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

" OceanicNext, Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
syntax on
colorscheme onedark
set t_Co=256

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"let g:airline_theme='gruvbox'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1


