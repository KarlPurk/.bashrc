set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'joshdick/onedark.vim'

" Tools
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/CmdlineComplete'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/LustyJuggler'
Plugin 'tpope/vim-surround'
Plugin 'joonty/vdebug'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'chaoren/vim-wordmotion'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'edsono/vim-matchit'
Plugin 'vim-scripts/closetag.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'wikitopian/hardmode'

" Languages
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ElmCast/elm-vim'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on
syntax enable

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set foldmethod=syntax

" --------------------------------------------------------------------
"  vim-easymotion configuration
" --------------------------------------------------------------------

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" --------------------------------------------------------------------
"  CtrlP
" --------------------------------------------------------------------
map <Leader>b :CtrlPBuffer<Return>

" --------------------------------------------------------------------
"  airline
" --------------------------------------------------------------------
set laststatus=2
let g:airline_theme='molokai'

" --------------------------------------------------------------------
" theme configuration 
" --------------------------------------------------------------------
set number
syntax enable

" --------------------------------------------------------------------
" theme configuration 
" --------------------------------------------------------------------
set guifont=Menlo:h18
colorscheme molokai

" --------------------------------------------------------------------
" Convert tabs to 4 spaces 
" --------------------------------------------------------------------
:set tabstop=4 shiftwidth=4 expandtab

" --------------------------------------------------------------------
" Ensure specified files are unfolded to the right level by default
" --------------------------------------------------------------------

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,javascript,vim,xml,html,xhtml,php setlocal foldmethod=syntax
autocmd Syntax c,cpp,javascript,vim,xml,html,xhtml,perl,php normal zR

" --------------------------------------------------------------------
" Remap leader key
" --------------------------------------------------------------------

" let mapleader=","
map <Space> <Leader>

" Allow jj to exit insert mode
inoremap jj <Esc>

" --------------------------------------------------------------------
" Display trailing whitespace
" --------------------------------------------------------------------

set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

" --------------------------------------------------------------------
" Set search preferences
" --------------------------------------------------------------------
set nohlsearch
set incsearch
set ignorecase
autocmd FileType typescript call s:typescript_filetype_settings()
function! s:typescript_filetype_settings()
    set makeprg=tsc
endfunction
" --------------------------------------------------------------------
" Autosave when focus lost
" --------------------------------------------------------------------
au FocusLost * :wa

" --------------------------------------------------------------------
" Syntastic configuration
" --------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

let g:elm_syntastic_show_warnings = 1

" --------------------------------------------------------------------
" Remove scrollbars
" --------------------------------------------------------------------

set guioptions=

" --------------------------------------------------------------------
" Allow unwritten changes when switching buffers (avoids forced saving)
" --------------------------------------------------------------------
set hidden

" --------------------------------------------------------------------
" Map lusty buffer
" --------------------------------------------------------------------
map <Leader>f :LustyJuggler<Return>

" --------------------------------------------------------------------
" PHP specific
" --------------------------------------------------------------------
let php_folding = 1        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.

" --------------------------------------------------------------------
" HTML - Enable HTML folding
" --------------------------------------------------------------------
augroup filetype_html
    autocmd!
    autocmd Syntax xml,html,xhtml syntax region htmlFold start="<\z(\<\(area\|base\|br\|col\|command\|embed\|hr\|img\|input\|keygen\|link\|meta\|para\|source\|track\|wbr\>\)\@![a-z-]\+\>\)\%(\_s*\_[^/]\?>\|\_s\_[^>]*\_[^>/]>\)" end="</\z1\_s*>" fold transparent keepend extend containedin=htmlHead,htmlH\d
augroup END

" --------------------------------------------------------------------
" VDebug
" --------------------------------------------------------------------
" let g:vdebug_options['path_maps'] = {"/srv/www/": "/projects/work/vagrant-local/www/"}


" --------------------------------------------------------------------
" Custom commands
" --------------------------------------------------------------------

command OpenInChrome !open /Applications/Google\ Chrome.app %

" --------------------------------------------------------------------
" Enable spellchecking
" --------------------------------------------------------------------
setlocal spell spelllang=en_gb

" --------------------------------------------------------------------
" Enable copy and paste between instances of vim
" --------------------------------------------------------------------
set clipboard+=unnamed

" --------------------------------------------------------------------
" Configure UltiSnips plugin
" --------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" --------------------------------------------------------------------
" Enable hard mode by default
" --------------------------------------------------------------------
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" --------------------------------------------------------------------
" Use tsc to for compiler
" https://github.com/leafgarland/typescript-vim/pull/61
" --------------------------------------------------------------------
"autocmd FileType typescript call s:typescript_filetype_settings()
"function! s:typescript_filetype_settings()
    "set makeprg=tsc
"endfunction
