" Not usually necessary:
set nocompatible

let mapleader = ","
" set number 

" Use relative instead of absolute line numbering: 
set relativenumber 
" Coordinates at bottom right:
set ruler 

syntax on 

" Highlight column 80 to avoid long lines.
" set colorcolumn=80 

set backspace=indent,eol " Allow backspace over autoindent and line breaks
"set backspace=start " allow over the start of insert.

set expandtab " Expand tabs into spaces
set shiftwidth=4 
set tabstop=4

set autoindent 
set showcmd

set foldmethod=indent " This seems like the best general choice
set foldlevelstart=1 " Start with files folded

set visualbell
set t_vb=

set splitbelow
set splitright

set cm=blowfish2 " Crypt method is the recommended better method.

set t_Co=256
if has('gui_running')
  colorscheme Spacedust " twilight is good too.
"  set background=dark
else
  set background=light
"  colorscheme twilight
endif

" Make seach term highlighting in the quickfix menu readable:
highlight Search cterm=NONE ctermfg=black ctermbg=yellow

"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

" ideas for remaps:
" shift+tab = za (fold toggle)

" REMAPS

" Force gf to open a new file if it doesn't exist.
map gf :vnew <cfile><CR>
noremap <Leader>d "=strftime("%y%m%d%H%M%S")<CR>p
" Toggle visible whitespace:
noremap <Leader>l :set list!<CR>
" Use prettier whitespace symbols:
set listchars=tab:▸\ ,eol:¬

" TODO: How to check for modified hidden buffers so they aren't lost when closing?
