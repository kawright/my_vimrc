" Copyright (C) 2024  KA Wright

" A very basic VIM configuration, suited to my personal tastes.

" INDENT SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab

" TAB MOVEMENT """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:nnoremap <C-p> :tabn <CR>
:nnoremap <C-o> :tabp <CR>

" MISC OPTIONS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set number

" COLOR COLUMN """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set colorcolumn=80

" THEME """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:colo default
:syntax off
if empty($VIM_BG)
    :echo 'Using default background color'
    :let $VIM_BG = 231
endif
if empty($VIM_FG)
    :echo 'Using default foreground color'
    :let $VIM_FG = 16
endif
exe 'highlight ColorColumn ctermfg=' . $VIM_BG . ' ctermbg='. $VIM_FG
exe 'highlight CursorLine ctermfg=' . $VIM_BG . ' ctermbg=' . $VIM_FG
exe 'highlight NonText ctermfg=' . $VIM_FG . ' ctermbg=' . $VIM_BG
exe 'highlight TabLine ctermfg=' . $VIM_BG . ' ctermbg=' . $VIM_FG
exe 'highlight LineNr ctermfg=' . $VIM_BG . ' ctermbg=' . $VIM_FG

" MAKEFILE CONFIG """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:autocmd FileType make setlocal noexpandtab
