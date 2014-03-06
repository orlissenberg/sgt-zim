syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

set number
set list
set listchars=tab:▸\ ,eol:¬
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

let mapleader=","
let g:EasyMotion_leader_key = '<Leader>'

call pathogen#infect()
Helptags
