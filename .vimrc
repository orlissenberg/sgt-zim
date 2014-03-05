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

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

let g:EasyMotion_leader_key = '<Leader>'

call pathogen#infect()
Helptags
