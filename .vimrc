" ### V U N D L E - Plugin Manager ###
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/colorizer'
Plugin 'Syntastic'
Plugin 'scrooloose/nerdtree' " Tree (F1)
Plugin 'tpope/vim-fugitive' " Git in vim
Plugin 'scrooloose/nerdcommenter' " (De)comment a block
Plugin 'godlygeek/tabular' " Line up text ':Tab/='
Plugin 'vim-scripts/nextval' " Increment/Decrement value + -
call vundle#end()

syntax on
colorscheme monokai
set number
set mouse=a
set noswapfile

" Display tabs, eol ...
set list
set listchars=tab:>-,eol:¬,nbsp:¤

" Indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Remove trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e
:set ruler



" ### P L U G I N   S E T T I N G S ###

" Enable RainbowParentheses Plugin
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NerdTree Plugin
nnoremap <F1> :NERDTreeToggle<CR>

" NerdCommenter Plugin
filetype plugin on

" Airline Plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='lucius'
