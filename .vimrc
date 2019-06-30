" #############################################################################
" ##################### V U N D L E - Plugin Manager ##########################
" #############################################################################

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/fzf.vim' " Find ...
Plugin 'junegunn/fzf' " Find ...
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/colorizer'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'
Plugin 'scrooloose/nerdtree' " Tree (F1)
Plugin 'tpope/vim-fugitive' " Git in vim
Plugin 'scrooloose/nerdcommenter' " (De)comment a block
Plugin 'godlygeek/tabular' " Line up text ':Tab/='
Plugin 'vim-scripts/nextval' " Increment/Decrement value + -
Plugin 'plasticboy/vim-markdown' " Markdown
Plugin 'posva/vim-vue' " Syntastic coloration for vue js
Plugin 'ervandew/supertab' " Completions with Tab
Plugin 'terryma/vim-multiple-cursors' " Multiple selections
Plugin 'airblade/vim-gitgutter' " See git add/edit/remove
call vundle#end()

"set rtp+=/usr/local/opt/fzf

syntax on
colorscheme monokai
set number
set mouse=a
set noswapfile
set hlsearch " Highlight search words
set clipboard=unnamed " Vim clipboard = OSX clipboard

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Display tabs, eol ..., column 80
set list
set listchars=tab:>-,eol:¬,nbsp:¤
let &colorcolumn="80"

" Indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Remove trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e
:set ruler

" Folding
set foldmethod=indent
set foldnestmax=1
set foldlevel=0

" #############################################################################
" ########################### PLUGINS SETTINGS ################################
" #############################################################################

" Enable RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NerdTree
nnoremap <F1> :NERDTreeToggle<CR>

" NerdCommenter
filetype plugin on

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='lucius'

" Vim-markdown
let g:vim_markdown_folding_disabled = 1

" Neomake
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)


" #############################################################################
" ############################## SHORTCUTS ####################################
" #############################################################################

:let mapleader = ","
set backspace=indent,eol,start
nnoremap <Leader>o :Files ~/src/cobra<CR>
nnoremap M :bp<CR>
nnoremap L :bn<CR>
