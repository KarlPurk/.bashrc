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

" Languages
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
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



" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

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
" Gundo - bind a key for the undo graph 
" --------------------------------------------------------------------
nnoremap <F5> :GundoToggle<CR>

" --------------------------------------------------------------------
" Ensure specified files are unfolded to the right level by default
" --------------------------------------------------------------------

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,javascript,vim,xml,html,xhtml,php setlocal foldmethod=syntax
autocmd Syntax c,cpp,javascript,vim,xml,html,xhtml,php,perl normal zR

" --------------------------------------------------------------------
" Remap leader key
" --------------------------------------------------------------------

" let mapleader=","
map <Space> <Leader>

" --------------------------------------------------------------------
" Display trailing whitespace
" --------------------------------------------------------------------

set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

" --------------------------------------------------------------------
" Enable search highlights
" --------------------------------------------------------------------
set hlsearch

" --------------------------------------------------------------------
" Autosave when focus lost
" --------------------------------------------------------------------
au FocusLost * :wa
