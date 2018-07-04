set nocompatible

" Vundle Settings {{{

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'jiangmiao/auto-pairs'
Plugin 'morhetz/gruvbox'

call vundle#end()

filetype plugin indent on

"}}}

"Global Settings{{{

let mapleader=","

" netrw is as good as NerdTree
" 11:19 PM, Aug 20 2017
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=33

"}}}

"Vim Mapping {{{

" movements
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" netrw settings
" This one is annoying
" nnoremap <silent> <C-m> :Explore<cr>
nnoremap <silent> <C-n> :Lexplore<cr>

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"}}}

"{{{ autocmd groups

" set indent to 2 for ruby files
autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2

" netrw settin, auto open a Vexplore
"augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
"augroup END

" see http://vim.wikia.com/wiki/Folding
augroup filetype _vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

"augroup filetype _change_dir
"    autocmd!
"    autocmd BufEnter * silent! lcd %:p:h
"augroup END

"}}}

" Common Switches {{{

filetype indent on
set wildmenu

set showcmd " show commad in bottom bar
"set autoindent      
"set smartindent   
set hidden

set showmatch " highlight match 
set incsearch " real time search

set number
set laststatus=2
set splitright
set ttimeoutlen=50
set ignorecase
set nobackup
set noswapfile
set noshowmode
set expandtab " tabs are spaces
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
set wrap linebreak nolist
set cursorline " highlight currentline 

set guifont=Monaco:h12

syntax enable 
set t_Co=256
colorscheme gruvbox
set background=dark

"}}}

