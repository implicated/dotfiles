" setup folds {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" autocmd setting {{{
autocmd FileType help setlocal number relativenumber cursorline
" }}}

" configs {{{ 
"" system settings
let mapleader=";"
set nobackup
set noundofile
set clipboard=unnamed
set history=500
set autochdir
set autoread
set wildmenu

"" display settings    
syntax enable
set showcmd
set nowrap
set number relativenumber cursorline
set showmode ruler noswapfile 
set scrolloff=3
set matchpairs+=<:>
""" set nocompatible

"" editor settings
set ignorecase smartcase hlsearch incsearch
set smartindent
set foldmethod=indent
set smarttab expandtab tabstop=4 shiftwidth=4 softtabstop=4
set encoding=utf-8 termencoding=utf-8 fileencodings=ucs-bom,utf-8,enc-cn,cp936,default,latin1

"set nrformats=alpha
" }}}

" mappings {{{
noremap Q q
noremap q J
noremap R %
noremap H ^
noremap J gT
noremap K gt
noremap L $
noremap j gj
noremap k gk
noremap ga '.
noremap gj j
noremap gk k
noremap g; ;
noremap g, ,

vnoremap < <gv
vnoremap > >gv
nnoremap gF :!open .<CR><CR>
nnoremap <esc><esc> :noh<return><esc>

nnoremap <Space>j :split<CR>
nnoremap <Space>l :vsplit<CR> 
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k

"" Emacs
inoremap <C-A> <Esc>I
inoremap <C-E> <Esc>A
inoremap <C-D> <Del>
""" cmdline 
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-E> <End>


" nnoremap zm zM
" nnoremap zr zR
" nnoremap zc zC
" nnoremap zo zO
" }}}

" plugins {{{
"" https://github.com/junegunn/vim-plug [PlugStatus PlugDiff]
call plug#begin()
    " https://github.com/yianwillis
    Plug 'yianwillis/macvimcdoc' | Plug 'yianwillis/vimcdoc' | Plug 'yianwillis/vimcfaq'
    " https://github.com/Vim-Geek/largefile.vim
    Plug 'https://github.com/Vim-Geek/largefile.vim.git'
    " https://github.com/preservim/nerdtree
    Plug 'preservim/nerdtree'
    " https://github.com/easymotion/vim-easymotion
    Plug 'easymotion/vim-easymotion'
    " https://github.com/machakann/vim-highlightedyank
    Plug 'machakann/vim-highlightedyank'
    " https://github.com/dbakker/vim-paragraph-motion
    Plug 'dbakker/vim-paragraph-motion'
    " https://github.com/michaeljsmith/vim-indent-object
    Plug 'michaeljsmith/vim-indent-object' " ai ii aI
    " https://www.vim.org/scripts/script.php?script_id=2699
    Plug 'vim-scripts/argtextobj.vim'
    " https://github.com/tpope/vim-surround
    Plug 'tpope/vim-surround' "gm
    " https://github.com/tpope/vim-commentary
    Plug 'tpope/vim-commentary' "gc
    " https://github.com/unblevable/quick-scope#installation
    Plug 'unblevable/quick-scope'
    " https://github.com/adelarsq/vim-matchit
    " Plug 'https://github.com/adelarsq/vim-matchit'
call plug#end()
" }}}

" plugins settings {{{
nnoremap <Leader>n :NERDTreeFocus<CR>

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1  " Turn on case-insensitive feature
map , <Plug>(easymotion-sn)

let g:highlightedyank_highlight_duration = 200
let g:highlightedyank_highlight_in_visual = 0
let g:highlightedyank_highlight_color = "rgba(160, 160, 160, 155)"

let g:argtextobj_pairs="[:],(:),<:>"

let g:surround_no_mappings = 1
nmap ds <Plug>Dsurround
nmap cs <Plug>Csurround
nmap ys <Plug>Ysurround
nmap gs <Plug>Ysurroundiw
xmap gs <Plug>VSurround

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" }}}

" other settings {{{
"" Set vim cursor in iterm
if $TERM_PROGRAM =~ "iTerm"
 let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
 let &t_SI = "\<Esc>]50;CursorShape=1\x7"
 let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
 let &t_EI = "\<Esc>]50;CursorShape=0\x7"
 let &t_SR = "\<Esc>]50;CursorShape=2\x7"
 set ttimeout
 set ttimeoutlen=1
 set ttyfast
endif
" }}}
