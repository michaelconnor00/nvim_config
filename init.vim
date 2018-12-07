
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

Plug 'Chiel92/vim-autoformat'

Plug 'djoshea/vim-autoread'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'sheerun/vim-polyglot'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'

Plug 'vim-syntastic/syntastic'

"Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" GutenTags
"set statusline+=%{gutentags#statusline()}

" CONFIG
set colorcolumn=100  " Highlight color for wrapping
set encoding=utf8

"set nowrap
set wrap linebreak nolist    " soft line wrap at screen edge

" OSX stupid backspace fix
set backspace=indent,eol,start

set relativenumber " show relative line numbers

map Y y$        " Yank to end of line
nnoremap H gT   " Make H move to prev tab
nnoremap L gt   " Make L move to next tab
nnoremap K i<CR><Esc>  " Make K split a line, opposite of J

" Copy/Paste system clipboard
function! ClipboardYank()
  call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('pbpaste')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" Esc key mapping for easy exit from insert
inoremap jk <esc>
inoremap kj <esc>

" Turn off search highlighting
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
set laststatus=0

"set showmatch   " Show matching brackets
set gdefault    " use g by default with sed replacement

"Ultisnips
" Trigger configuration. Do not use <tab> if it collides
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_extensions = ['tag']

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
" let g:python_host_prog='/usr/local/bin/python'
" let g:python3_host_prog='/usr/local/bin/python3'

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_exclude_preview = 0
"let g:airline_section_error = 0
let g:airline_section_warning = 0
let g:airline_section_y = 0
let g:airline_theme='gruvbox'

" Theme
syntax enable
"syntax on
colorscheme gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark    " Setting dark mode

