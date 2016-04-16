syntax on
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set expandtab
set number
set foldmethod=syntax

let $PATH = $PATH . ':' . expand('~/.cabal/bin')

au BufNewFile,BufRead *.fo set filetype=xml

let mapleader = ","

call plug#begin('~/.vim/plugged')

" --- Color schemes
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'andreasvc/vim-256noir'
Plug 'gilgigilgil/anderson.vim'
"
" --- Docker
Plug 'ekalinin/Dockerfile.vim'

" --- Elm
Plug 'lambdatoast/elm.vim'

"--- General
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'

" --- Haskell
Plug 'yogsototh/haskell-vim'            " syntax indentation / highlight
Plug 'enomsg/vim-haskellConcealPlus'    " unicode for haskell operators
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'Twinside/vim-hoogle'

" --- Kotlin
Plug 'udalov/kotlin-vim'

" --- Miscellaneous
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/syntastic'             " syntax checker
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/dbext.vim'
"
" --- Mustache
Plug 'mustache/vim-mustache-handlebars'

" --- Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

" --- Ruby
Plug 'tpope/vim-rake'
Plug 'tpope/vim-cucumber'
Plug 'skalnik/vim-vroom'
Plug 'ngmy/vim-rubocop'

" --- Yesod
Plug 'pbrisbin/vim-syntax-shakespeare'    " Yesod templates

$
call plug#end()

set t_Co=256
color zenburn

if (exists('+colorcolumn'))
	set colorcolumn=80
	highlight ColorColumn ctermbg=1
endif

set cursorline

" --- For airline
set laststatus=2 " --- Fix to not only load after a split

" For vim-vroom
let g:vroom_cucumber_path="cucumber"

" Home row, please!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
