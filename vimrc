set number " Line numbers on
set relativenumber " Overriding set number for now
set ruler " Coordinates at bottom right

syntax on " Syntax highlighting
" set colorcolumn=80 " Highlight column 80 to avoid long lines.

set backspace=indent,eol " Allow backspace over autoindent and line breaks
" set backspace=start to allow over the start of insert.

set expandtab " Expand tabs into spaces
set shiftwidth=4 
set tabstop=4

set autoindent " I think I always want this.
 
set showcmd

set foldmethod=indent " This seems like the best general choice
set foldlevelstart=1 " Maybe temporary - remind me that folds exist.

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

"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

" ideas for remaps:
" shift+tab = za (fold toggle)
