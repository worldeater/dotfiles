" Maintainer:   shreds-of-sanity@gmx.net
" Version:      1.0
" Last Change:  2014-06-03
" Note:         Based on Henrique C. Alves' magnificant "mustang" scheme

"  ====================    gaul.vim    ====================

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gaul"

"" Console/GUI switch
if expand("$DISPLAY") == "$DISPLAY"
  "" Console
  set background=dark
  hi  LineNr           guifg=#808080  guibg=#000000  gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  NonText          guifg=#404040  guibg=NONE     gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  SpecialKey       guifg=#404040  guibg=NONE     gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  Search           guifg=#faf4c6  guibg=#3c414c  gui=none    ctermfg=white  ctermbg=yellow  cterm=bold
else
  "" Xorg
  set background=dark
  hi  LineNr           guifg=#404040  guibg=NONE     gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  NonText          guifg=#404040  guibg=NONE     gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  SpecialKey       guifg=#404040  guibg=NONE     gui=none    ctermfg=black  ctermbg=NONE    cterm=bold
  hi  Search           guifg=#ffffff  guibg=#c00000  gui=none    ctermfg=black  ctermbg=gray    cterm=none
endif

"" Common stuff
hi  Comment            guifg=#606060  guibg=NONE     gui=italic  ctermfg=black  ctermbg=NONE    cterm=bold
hi  ModeMsg            guifg=#ffffff  guibg=NONE     gui=none    ctermfg=white  ctermbg=NONE    cterm=none
"hi  ColorColumn        guifg=NONE     guibg=#1a1a1a  gui=none    ctermfg=white  ctermbg=gray    cterm=bold
hi  ColorColumn        guifg=NONE     guibg=#000000  gui=none    ctermfg=white  ctermbg=gray    cterm=bold
hi  Cursor             guifg=#000000  guibg=#ffcc00  gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  CursorColumn       guifg=NONE     guibg=#2d2d2d  gui=none    ctermfg=NONE   ctermbg=gray    cterm=none
hi  CursorLine         guifg=NONE     guibg=#2d2d2d  gui=none    ctermfg=NONE   ctermbg=gray    cterm=none
hi  Folded             guifg=#a0a8b0  guibg=#384048  gui=none    ctermfg=black  ctermbg=gray    cterm=none
hi  MatchParen         guifg=#d0ffc0  guibg=#f00000  gui=bold    ctermfg=red    ctermbg=gray    cterm=none
hi  Normal             guifg=#e2e2e5  guibg=#2e2e2e  gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Pmenu              guifg=#ffffff  guibg=#444444  gui=none    ctermfg=white  ctermbg=gray    cterm=none
hi  PmenuSel           guifg=#000000  guibg=#b1d631  gui=none    ctermfg=black  ctermbg=green   cterm=none
hi  Title              guifg=#f6f3e8  guibg=NONE     gui=bold    ctermfg=white  ctermbg=NONE    cterm=bold
hi  VertSplit          guifg=#444444  guibg=#444444  gui=none    ctermfg=white  ctermbg=black   cterm=bold
hi  Visual             guifg=#000000  guibg=#d4d0c8  gui=none    ctermfg=black  ctermbg=yellow  cterm=none
"" Syntax highlighting
hi  Boolean            guifg=#b1d631  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
"hi  Constant           guifg=#ffca7f  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Constant           guifg=NONE     guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Error              guifg=#000000  guibg=#c00000  gui=italic  ctermfg=white  ctermbg=red     cterm=bold
hi  Function           guifg=#ffffff  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Identifier         guifg=#bfd66a  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Keyword            guifg=#ffcf7a  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
"hi  Number             guifg=#ffcf7a  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Number             guifg=NONE     guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  PreProc            guifg=#faf4c6  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Special            guifg=#ffcf7a  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Statement          guifg=#b4b8c0  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
"hi  Statement          guifg=NONE     guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  String             guifg=#bfd66a  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Todo               guifg=#ffffff  guibg=#ff6600  gui=italic  ctermfg=black  ctermbg=yellow  cterm=bold
"hi  Type               guifg=#b4b8c0  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Type               guifg=NONE     guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
hi  Parens             guifg=#909090  guibg=NONE     gui=none    ctermfg=NONE   ctermbg=NONE    cterm=none
"" Diff stuff
hi  DiffAdd            guifg=#ff9800  guibg=#000000  gui=none    ctermfg=red    ctermbg=black   cterm=none
hi  DiffChange         guifg=#999999  guibg=#000000  gui=none    ctermfg=gray   ctermbg=NONE    cterm=none
hi  DiffDelete         guifg=#2d2d2d  guibg=#000000  gui=none    ctermfg=gray   ctermbg=NONE    cterm=none
hi  DiffText           guifg=#ff9800  guibg=#000000  gui=none    ctermfg=red    ctermbg=black   cterm=none
"" Vim's tab bar (text mode only)
hi  TabLine            guifg=NONE     guibg=NONE     gui=none    ctermfg=black  ctermbg=gray    cterm=none
hi  TabLineFill        guifg=NONE     guibg=NONE     gui=none    ctermfg=black  ctermbg=gray    cterm=none
hi  TabLineSel         guifg=NONE     guibg=NONE     gui=none    ctermfg=NONE   ctermbg=black   cterm=reverse
"" Status line colors
hi  StatusLine         guifg=#999999  guibg=#444444  gui=none    ctermfg=white  ctermbg=black   cterm=none
hi  StatusLineNC       guifg=#999999  guibg=#444444  gui=none    ctermfg=black  ctermbg=white   cterm=none
hi  StatusLineOK       guibg=#008000  guifg=#ffffff  gui=none    ctermbg=green  ctermfg=white   cterm=bold
hi  StatusLineWarning  guibg=#8b0000  guifg=#ffffff  gui=none    ctermbg=red    ctermfg=white   cterm=bold
hi  StatusLineReadonly guibg=#444444  guifg=#ff0000  gui=bold    ctermbg=red    ctermfg=white   cterm=bold
hi  StatusLineWhite    guibg=#444444  guifg=#ffffff  gui=none    ctermbg=black  ctermfg=white   cterm=bold

