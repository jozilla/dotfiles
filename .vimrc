" Backspace troubles
set nocp
set bs=2

" Searching
set showmatch
set incsearch
set ignorecase smartcase
" Ignore case for file expansion
set wildignorecase 

" Encoding (default to UTF-8)
set encoding=utf-8

" Set directory for swap/temp files
set directory=.,$TEMP


" Don't use Ex mode, use Q for (re)formatting
" Reflow para with Q
nnoremap Q gqap
" Reflow selected with Q in visual mode
vnoremap Q gq
imap <M-F> <esc>:gqip<CR>
map <M-F> <esc>:gqip<CR>

" Word wrapping
set textwidth=79 "or 70
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab autoindent
set showbreak="+ "

" Spell check
set spell spelllang=en_gb,nl
if !has("gui_running")
  " Spell checking colors are quite annoying in console mode
  hi clear SpellBad
  hi SpellBad cterm=underline "ctermfg=DarkRed 
  hi clear SpellLocal
  hi SpellLocal cterm=underline "ctermfg=DarkYellow 
  hi clear SpellCap
  hi SpellCap cterm=underline "ctermfg=LightRed 
endif

" Color scheme
syntax on
if has("gui_running")
    colorscheme solarized
    set guifont=Ubuntu\ Mono\ 18
endif

" GUI options: no toolbar, only menu
set guioptions-=T
set guioptions+=m
set ruler
set vb t_vb= " visual bell

" LateX-Suite settings
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
" LateX-Suite PDF settings
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_ViewRule_pdf='gnome-open' "use default PDF viewer

