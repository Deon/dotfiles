set backspace=indent,eol,start
colorscheme default

syntax on
set number
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" ======================== VUNDLE ========================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'               " Vundle
Plugin 'tpope/vim-sensible'                 " Sensible defaults

Plugin 'scrooloose/nerdtree'                " File browser
Plugin 'Xuyuanp/nerdtree-git-plugin'		" Git plugin for Nerdtree

Plugin 'nathanaelkane/vim-indent-guides'    " Indent guides
Plugin 'ntpeters/vim-better-whitespace'		" Whitespace highlighting
Plugin 'roxma/vim-paste-easy'				" Automatically set paste

Plugin 'airblade/vim-gitgutter'             " Git gutter
Plugin 'tpope/vim-fugitive'                 " Git

Plugin 'tpope/vim-surround'                 " Surroundings
Plugin 'godlygeek/tabular'                  " Alignment
Plugin 'scrooloose/nerdcommenter'           " Commenting

Plugin 'junegunn/fzf'                       " Fuzzy finder
Plugin 'junegunn/fzf.vim'                   " Fuzzy finder

Plugin 'bling/vim-airline'                  " Status line
Plugin 'vim-airline/vim-airline-themes'     " Airline themes

Plugin 'scrooloose/syntastic'               " Syntax checker
Plugin 'valloric/youcompleteme'             " Code completion
Plugin 'honza/vim-snippets'					" Code Snippets

" Language Specific
Plugin 'fatih/vim-go'                       " go

call vundle#end()

" ======================== END VUNDLE ====================

" Plugin configs
" Airline
let g:airline_powerline_fonts = 1

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Whitespace highlighting
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" fzf
nnoremap <C-P> :Files<CR>

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Default right/bottom
set splitbelow
set splitright

