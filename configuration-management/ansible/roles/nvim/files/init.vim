" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ngmy/vim-rubocop'
Plug 'chriskempson/base16-vim'
" Plug 'w0rp/ale'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chr4/nginx.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'jremmen/vim-ripgrep'
call plug#end()							" Initialize plugin system

" Formatting
set shiftwidth=2
"set tabstop=1 

" Misc config
set relativenumber
set number
set encoding=utf-8
filetype plugin on
set cursorline
" set colorcolumn=120

" Colors/themes
let base16colorspace=256  					" Access colors present in 256 colorspace
syntax enable
set background=dark

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" **** KEY REMAPPINGS ****
inoremap jj <esc>
map <C-n> :NERDTreeToggle<CR>
let mapleader="\<space>"
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>t :tabnext<cr>
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-down> <C-w><down>
nnoremap <C-up> <C-w><up>
nnoremap <C-left> <C-w><left>
nnoremap <C-right> <C-w><right>

" Plugin configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16'
let g:GitGutterEnable = 1					" Enable GitGutter
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"				" Ultisnips config
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDir="$HOME/.ultisnips"
let g:deoplete#enable_at_startup = 1
let g:ctrlp_extensions = ['line']
let g:ctrlp_cmd = 'CtrlPLastMode'

let g:ruby_host_prog = '$HOME/.rbenv/versions/2.5.1/bin/neovim-ruby-host'	" Path to Ruby, to avoid rbenv shimming in

