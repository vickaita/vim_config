" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" You can also specify a different font, overriding the default font
"if has('gui_gtk2')
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"else
"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"endif

" If you want to run gvim with a dark background, try using a different
" colorscheme or running 'gvim -reverse'.
" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
" downloads for the colorschemes on vim.org

" colorscheme wombat
" colorscheme jellybeans
colorscheme solarized

" Turn off all the toolbars and menus that I don't want. Also have plain text
" confirmation dialogs instead of a popup window.
set guioptions-=T
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions+=c

if has("gui_macvim")
  set fuoptions=maxhorz,maxvert                   " Fullscreen takes up entire screen
  "set guifont=DejaVu\ Sans\ Mono:h11
  "set guifont=Monaco:h12
  set guifont=Monaco:h14
  "set guifont=Ubuntu\ Mono:h14
endif

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/gvimrc
if filereadable("/etc/vim/gvimrc.local")
  source /etc/vim/gvimrc.local
endif
