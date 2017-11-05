set number relativenumber

set laststatus=2
set hlsearch
set tabstop=4
set shiftwidth=4

execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme jellybeans

set noshowmode
let g:lightline = {
	  \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
