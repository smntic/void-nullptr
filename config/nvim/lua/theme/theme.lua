vim.cmd([[
    set cursorline

    set background=light
    hi clear

    set termguicolors
    set t_Co=256
    let g:colors_name = "huemaster"

    hi Normal guifg=#000d19

    hi! link NormalFloat Normal

    hi LineNr guifg=#102022 guibg=NONE guisp=NONE gui=NONE
    hi SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE

    hi CursorLine guifg=NONE guibg=#c3dfe2 guisp=NONE gui=NONE
    hi CursorLineNr guifg=#000000 guibg=NONE guisp=NONE gui=NONE

    hi StatusLine guifg=#102022 guibg=#077fe9 guisp=NONE gui=NONE
    hi StatusLineNC guifg=#102022 guibg=#138cf7 guisp=NONE gui=NONE
    hi PmenuSel guifg=#102022 guibg=#2b98f7 guisp=NONE gui=NONE

    hi Visual guifg=NONE guibg=#077fe9 guisp=NONE gui=NONE
    hi! link Search Visual
    hi! link MatchParen Visual

    hi Identifier guifg=#102022 guibg=NONE guisp=NONE gui=NONE
    hi Keyword guifg=#033562 guibg=NONE guisp=NONE gui=NONE
    hi Statement guifg=#005865 guibg=NONE guisp=NONE gui=NONE
    hi Function guifg=#428045 guibg=NONE guisp=NONE gui=NONE
    hi PreProc guifg=#4e7a71 guibg=NONE guisp=NONE gui=NONE
    hi Constant guifg=#548318 guibg=NONE guisp=NONE gui=NONE
    hi Type guifg=#1d2d08 guibg=NONE guisp=NONE gui=NONE
    hi Operator guifg=#026565 guibg=NONE guisp=NONE gui=NONE
    hi Comment guifg=#214144 guibg=NONE guisp=NONE gui=NONE

    hi! link Label Identifier
    hi! link StorageClass Keyword
    hi! link Structure Keyword
    hi! link Typedef Keyword
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Macro PreProc
    hi! link Include PreProc
    hi! link Delimeter Operator
    hi! link SpecialComment Comment

    hi Special guifg=#033562 guibg=NONE guisp=NONE gui=NONE
    hi Title guifg=#548318 guibg=NONE guisp=NONE gui=NONE
    hi Todo guifg=#000000 guibg=#4d4df9 guisp=NONE gui=NONE

    hi! link NonText Special
    hi! link Question Special
    hi! link Directory Title

    hi DiagnosticError guifg=#620303 guibg=NONE guisp=NONE gui=NONE
    hi DiagnosticWarn guifg=#623303 guibg=NONE guisp=NONE gui=NONE
    hi DiagnosticInfo guifg=#030362 guibg=NONE guisp=NONE gui=NONE
    hi DiagnosticHint guifg=#000000 guibg=NONE guisp=NONE gui=NONE
    hi DiagnosticOk guifg=#036203 guibg=NONE guisp=NONE gui=NONE
    hi DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#620303 gui=underline
    hi DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#623303 gui=underline
    hi DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#030362 gui=underline
    hi DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#000000 gui=underline
    hi DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#036203 gui=underline

    hi! link Error DiagnosticError
    hi! link ErrorMsg DiagnosticError
    hi! link WarningMsg DiagnosticWarn

    hi DiffAdd guifg=#036203 guibg=NONE guisp=NONE gui=NONE
    hi DiffChange guifg=#030362 guibg=NONE guisp=NONE gui=NONE
    hi DiffDelete guifg=#620303 guibg=NONE guisp=NONE gui=NONE

    hi SpellBad guifg=NONE guibg=NONE guisp=#620303 gui=undercurl
    hi SpellRare guifg=NONE guibg=NONE guisp=#623303 gui=undercurl
    hi SpellLocal guifg=NONE guibg=NONE guisp=#030362 gui=undercurl
]])
