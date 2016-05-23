" vim: tw=0 ts=4 sw=4
" Vim color file

hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "simple_dark"

highlight Boolean       ctermfg=161                     cterm=bold
highlight Comment       ctermfg=243
highlight Constant      ctermfg=197                     cterm=bold
highlight CursorColumn  ctermfg=NONE    ctermbg=233     cterm=bold
highlight CursorLine                    ctermbg=233     cterm=bold
highlight CursorLineNr  ctermfg=208
highlight Directory     ctermfg=112
highlight Error                         ctermbg=9
highlight Identifier    ctermfg=228
highlight lineNr        ctermfg=255
highlight MatchParen    ctermfg=197     ctermbg=208
highlight NonText       ctermfg=26
highlight Normal        ctermfg=255     ctermbg=232
highlight PreProc       ctermfg=161                     cterm=bold
highlight Pmenu         ctermfg=208     ctermbg=232
highlight PmenuSbar     ctermfg=208     ctermbg=235
highlight PmenuSel      ctermfg=112     ctermbg=235
highlight PmenuThumb    ctermfg=208     ctermbg=232
highlight Search                        ctermbg=3
highlight Special       ctermfg=12
highlight SpellBad                                      cterm=underline
highlight SpellCap                                      cterm=underline
highlight SpellLocal                                    cterm=underline
highlight SpellRare                                     cterm=underline
highlight Statement     ctermfg=208                     cterm=bold
highlight StatusLine    ctermfg=112     ctermbg=235     cterm=NONE
highlight STatusLinNC   ctermfg=255     ctermbg=235     cterm=NONE
highlight String        ctermfg=229
highlight TabFillLine                   ctermbg=235     cterm=bold
highlight Todo          ctermfg=4       ctermbg=3
highlight Type          ctermfg=112
highlight Visual        ctermfg=NONE    ctermbg=236     cterm=NONE
