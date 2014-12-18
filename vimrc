set autoindent
set backspace=2
set cmdheight=1
set directory=~/.vim/swap
set fileencodings=utf8,latin1
set expandtab
set hlsearch
set ignorecase
set lazyredraw
set linespace=1
set list
exec "set listchars=eol:\uAC,tab:\uAB\uBB,trail:\uB7"
set ls=2
set magic
set mouse=a
set nobackup
set nocompatible
set nofoldenable
set noincsearch
set nomodeline
set nowrap
set number
set ruler
set scrolloff=3
set shiftwidth=2
set shortmess+=I
set showcmd
set showmatch
set showmode
set showtabline=2
set tabpagemax=99
set smartindent
set tabstop=2
set title
set ttyfast
set visualbell
set wildmenu

if has('gui_running')
  set background=dark
  set clipboard=unnamedplus  " enable sane cut'n'paste (1/2)
  set encoding=utf8
  set guioptions=""
  set guioptions+=L          " second scrollbar for split windows
  set guioptions+=M          " don't load menu.vim
  set guioptions+=a          " enable sane cut'n'paste (2/2)
  set guioptions+=b          " horizontal scrollbar
  set guioptions+=e          " gui tabs
  set guioptions+=i          " window icon
  set guioptions+=r          " vertical scrollbar
  set columns=100
  set lines=40
  set guitablabel=%t\ %M
  set guifont=Envy\ Code\ R\ 10
  "set guifont=PT\ Mono\ 9.25
  noremap  <F12>   :set guifont=Envy\ Code\ R\ 11<CR>
  noremap  <S-F12> :set guifont=Envy\ Code\ R\ 10<CR>
  noremap  <C-S> :update<CR>
  vnoremap <C-S> <C-C>:update<CR><ESC>
  inoremap <C-S> <C-O>:update<CR><ESC>
endif

colorscheme gaul
syntax on
filetype plugin on


" Return to last edit position when opening files
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" Don't need no fucking macro recording, no help, no ex mode and man pages
noremap  q    <nop>
noremap  <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>
noremap  Q    <nop>
noremap  K    <nop>

" Make F3 the "goto next/prev search result" key
noremap  <F3>    n
noremap  <S-F3>  N

" Tabs
noremap  <C-T> <ESC>:tabe<CR>:tabm<CR>
inoremap <C-T> <ESC>:tabe<CR>:tabm<CR>
noremap  <C-P> <ESC>:tabp<CR>
inoremap <C-P> <ESC>:tabp<CR>
noremap  <C-N> <ESC>:tabn<CR>
inoremap <C-N> <ESC>:tabn<CR>

" Plugins
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :TagbarToggle<CR>

" Need sane movement
map      #     <nop>
noremap  <C-h> <C-b>
noremap  <C-j> <C-e>
noremap  <C-k> <C-y>
noremap  <C-l> <C-f>
map      <C-b> <nop>
map      <C-e> <nop>
map      <C-y> <nop>
map      <C-f> <nop>
cnoremap <C-a> <Home>
"map      <C-U> <nop>
"map      <C-D> <nop>

" Make j and k work as expected in wrapped lines
map j gj
map k gk

" Window resizing stuff
noremap  <C-W>, <C-W><
noremap  <C-W>. <C-W>>
"noremap <C-W>+ <C-W>+
noremap  <C-W># <C-W>-

" Save via sudo
cmap w!! w !sudo tee >/dev/null %

" ctags support
noremap <C-CR> <C-]>
noremap <C-BS> :pop<CR>

" Quick access for commonly used stuff
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>q       :tabdo q!<cr>
nnoremap <leader>z       :tabdo wq!<cr>
nnoremap <leader>s       :w<cr>
nnoremap <leader>f       :set ff=unix<cr>
nnoremap <leader>F       :set ff=dos<cr>
nnoremap <leader>e       :set fenc=utf8<cr>
nnoremap <leader>E       :set fenc=latin1<cr>
set pastetoggle=<leader>p

" Use tab instead of % for parens matching
nnoremap <tab> %
vnoremap <tab> %

" Fix b0rken syntax hilighting for shell scripts
let bash_is_sh = 1

" Open help in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

" Hilight chars in column 81
au BufWinEnter * call matchadd('ColorColumn', '\%81v', 100)

" Have a nice status line (this expects utf8 being used in gui mode)
function! SetStatusLine()
  let statusline="%#StatusLine#"
  if (&modified)
    let statusline.="%#StatusLineWarning#"
    if has("gui_running")
      " \u2718 is HEAVY BALLOT X
      exec "let statusline.=' \u2718'"
    else
      let statusline.=" !"
    endif
  else
    let statusline.="%#StatusLineOK#"
    if has("gui_running")
      " \u2718 is HEAVY CHECK MARK
      exec "let statusline.=' \u2714'"
    endif
  endif
  let statusline.=" %t %*%="
  let statusline.="  mode:"
  if (&readonly)
    let statusline.="%#StatusLineReadonly#ro%*"
  else
    let statusline.="%#StatusLineWhite#rw%*"
  endif
  let statusline.="  enc:%#StatusLineWhite#%{&fenc}%*"
  let statusline.="  ff:%#StatusLineWhite#%{&ff}%*"
  let statusline.="  %22.22(%v:%l/%L%) "
  return statusline
endfunction
set statusline=%!SetStatusLine()

