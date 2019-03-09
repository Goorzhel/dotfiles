" Required for Vundle
set nocompatible
filetype off

" rtp = runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
" TODO: gracefully degrade airline on unsupported platforms
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rodjek/vim-puppet'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on    " required

set directory=~/.vim/tmp

map <C-n> :NERDTreeToggle<CR>

syntax on
colo peachpuff
scriptencoding utf-8
set mouse=a
set backspace=indent,eol,start  " more powerful backspacing
set nocompatible
set ruler                       " show the cursor position all the time
set shell=zsh\ -l
set modeline
set modelines=3
set encoding=utf-8
set nohlsearch

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'

" Shift key compensation
command WQ wq
command Wq wq
command W w
command Q q

" https://thoughtbot.com/blog/faster-grepping-in-vim
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  nnoremap \ :Ag<SPACE>
endif
