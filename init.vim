
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'fatih/vim-go'

Plug 'mileszs/ack.vim'

Plug 'vim-scripts/Smart-Tabs'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

" Plug 'Chiel92/vim-autoformat'

Plug 'djoshea/vim-autoread'

Plug 'tpope/vim-surround'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Plug 'zchee/deoplete-go' " https://github.com/zchee/deoplete-go

Plug 'Shougo/deol.nvim'

" Plug 'sheerun/vim-polyglot'

" Themes
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'
Plug 'ambv/black'

" Plug 'vim-syntastic/syntastic'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" nathanaelkane/vim-indent-guides settings
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" ALE settings https://github.com/w0rp/ale#usage
let g:ale_completion_enabled = 1
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'python': ['black']
" \}
" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black'],
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1

" GutenTags
"set statusline+=%{gutentags#statusline()}

" CONFIG
set colorcolumn=100  " Highlight color for wrapping
set encoding=utf8
set mouse=a

"set nowrap
set wrap linebreak nolist    " soft line wrap at screen edge

" OSX stupid backspace fix
set backspace=indent,eol,start

set relativenumber " show relative line numbers

map Y Vy        " Yank to end of line
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
nnoremap ; <c-:>

" Turn off search highlighting
"set nohls
set smartcase

" Set Proper Tabs
imap <C-Return> <CR><CR><C-o>k<Tab>
set tabstop=2
"set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
"set autoindent
let python_highlight_all=1
set laststatus=0

"set showmatch   " Show matching brackets
set gdefault    " use g by default with sed replacement

" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_extensions = ['tag']

" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_quiet_messages = {"!level": "errors"}
" let g:syntastic_python_flake8_args = "--ignore=E501,E266,E402"
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run eslint-check'

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

" Ack.Vim and AG (silver searcher)
" let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'

" Silver Searcher (install via brew)
" override grep and CtrlP
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set termguicolors

syntax on
colorscheme onedark
