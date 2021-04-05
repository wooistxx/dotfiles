" maintain by Tom Mao 
" Contact: wooistxx@gmail.com,outlook.com
" Github: https://github.com/wooistxx/dotfiles


"-----------------------------------------
" basic configuration

set nocompatible                " don't bother with vi compatibility "
set autoread                    " reload files when changed on disk, i.e. via `git checkout` "
set shortmess=atI
set magic                       " For regular expressions turn magic on "
set title                       " change the terminal's title "
set nobackup                    " do not keep a backup file "
set noerrorbells                " don't beep "
set visualbell t_vb=            " turn off error beep/flash "
set t_vb=
set timeoutlen=500
set nu
syntax on

"-----------------------------------------
" coding

set encoding=utf-8  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B


"-----------------------------------------
" interface

set ruler                       " show the current row and column "
set number                      " show line numbers "
set nowrap          
set showcmd                     " display incomplete commands "                                                                                          
set showmode                    " display current modes "
set showmatch                   " jump to matches when entering parentheses "
set matchtime=2                 " tenths of a second to show the matching parenthesis "


"-----------------------------------------
" search

set hlsearch                    " highlight searches "
set incsearch                   " do incremental searching, search as you type "
set ignorecase                  " ignore case when searching "
set smartcase                   " no ignorecase if Uppercase char present "



"-----------------------------------------
" space, tab and indent

set expandtab                   " expand tabs to spaces "
set smarttab        
set shiftround
set autoindent smartindent shiftround                                                                            
set shiftwidth=4    
set tabstop=4       
set softtabstop=4               " insert mode tab and backspace use 4 spaces "

"-----------------------------------------
" cursor

"set cursorcolumn
"set cursorline


"-----------------------------------------
" file type

filetype on
filetype plugin on
filetype indent on

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd

autocmd BufNewFile *.sh,*.py exec \":call AutoSetFileHead()\"
function! AutoSetFileHead()
    " .sh "
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif                                                                                                                                                  
         
    " python "     
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")                                                                                                                                      
    let c = col(".")
    %s/\s\+$//e     
    call cursor(l, c)
endfun



"-----------------------------------------
" key mapping
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j
                
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>

set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to "
                                "    paste mode, where you can paste mass data "
                                "    that won't be autoindented "
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>                                                                                         
                    
inoremap kj <Esc>                       
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
            
map <Leader>sa ggVG"

" undo                 
nnoremap U <C-r>                                                                                                                            
nnoremap ' `        
nnoremap ` '

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz                                                                                                                                  
noremap <silent><leader>/ :nohls<CR>

vnoremap < <gv      
vnoremap > >gv      
                    
map Y y$            
                    
nnoremap ; :

nnoremap H ^        
nnoremap L $        
                    
cmap w!! w !sudo tee >/dev/null %
                    
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"-----------------------------------------
" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif


