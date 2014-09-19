" vim setup file
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" git wrapper for vim
Bundle 'tpope/vim-fugitive'
" sv syntax
Bundle 'systemverilog.vim'

filetype plugin indent on
syntax on

au BufRead,BufNewFile  *.sv set filetype=systemverilog
au BufRead,BufNewFile  *.vh set filetype=systemverilog

set bg=dark
set ts=2
set sw=2
set expandtab
set nu
set sm
set textwidth=80
set wrap
set showcmd
set laststatus=2
set ruler
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set statusline=%<%f\    " Filename
set statusline+=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()} "  Git Hotness
set statusline+=%*
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
colors darkblue
map <F1> :tabprev<CR>
map <F2> :tabnext<CR>

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" nerdtree
nmap <silent> <Leader>n :NERDTreeTabsToggle<CR>
let g:NERDTreeDirArrows=1


" Remove trailing whitespaces when saving
 autocmd BufWritePre * :%s/\s\+$//e
