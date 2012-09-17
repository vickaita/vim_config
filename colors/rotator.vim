" Vim color file
"
"  "                                                                           "
"  "                                                                           "
"  '                                               888                         '
"  '                                               888                         '
"  '                                               888                         '
"  '   .d8888b 888  888 88888b.   .d8888b  8888b.  888  888  .d88b.  .d8888b   '
"  '  d88P'    888  888 888 '88b d88P'        '88b 888 .88P d8P  Y8b 88K       '
"  "  888      888  888 888  888 888      .d888888 888888K  88888888 'Y8888b.  "
"  "  Y88b.    Y88b 888 888 d88P Y88b.    888  888 888 '88b Y8b.          X88  "
"  "   'Y8888P  'Y88888 88888P'   'Y8888P 'Y888888 888  888  'Y8888   88888P'  "
"  "                    888                                                    "
"  "                    888                                                    "
"  "                    888                                                    "
"  "                                                                           "
"  "                                                                           "
"
" Maintainer:   Vick Aita <vickaita@gmail.com>
" Last Change:  
" URL:		
" Version:

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="rotator"

" hi Normal

" OR

highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	
" Uncomment and complete the commands you want to change from the default.


hi Normal 				guifg=#E8E5CF		guibg=#1A1415		gui=none
hi Cursor 				guifg=NONE   		guibg=#656565		gui=none
"hi CursorIM	
"hi Directory	
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
"hi VertSplit	
"hi Folded		
"hi FoldColumn	
"hi IncSearch	
hi LineNr 				guifg=#857b6f		guibg=#000000		gui=none
"hi ModeMsg		
"hi MoreMsg		
"hi NonText		
"hi Question	
"hi Search		
"hi SpecialKey	
"hi StatusLine	
"hi StatusLineNC	
"hi Title		
"hi Visual		
"hi VisualNOS	
"hi WarningMsg	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment 				guifg=#99968b							gui=italic
"hi Constant	
hi Identifier			guifg=#00ffff							gui=none
hi Statement 			guifg=#ff00ff							gui=none
"hi PreProc	
hi Type					guifg=#ffff00							gui=none
hi Special				guifg=#f0f0f0
"hi Underlined	
"hi Ignore		
"hi Error		
"hi Todo		
"hi String 				guifg=#95e454 							gui=italic
hi String 				guifg=#dd88ff 							gui=italic

" CT
highlight Conditional	guifg=LightGreen
highlight Repeat		guifg=SeaGreen2							gui=none
highlight Special		guifg=#dd88ff							gui=none 
highlight Underlined	guifg=honeydew3		guibg=bg			gui=underline 
highlight Todo			guifg=Cyan			guibg=#507080		gui=underline
