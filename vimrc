""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-------------------<o-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-o>----------------------"
"-'-'-'-'-'-'-'-'-'-'-o-------------------------------o-'-'-'-'-'-'-'-'-'-'-'-'"
"-<><><><><><><><><><>-| VickAita's Vim Configuration |-<><><><><><><><><><><>-"
"-,-,-,-,-,-,-,-,-,-,-o-------------------------------o-,-,-,-,-,-,-,-,-,-,-,-,"
"-------------------<o-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-o>----------------------"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" These lines are required for NeoBundle.
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:

"NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'astashov/vim-ruby-debugger' " Vim plugin for debugging Ruby applications (using ruby-debug-ide gem)
"NeoBundle 'joonty/vdebug'
NeoBundle 'L9'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'cakebaker/scss-syntax'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'kovisoft/paredit' " Official mirror of Paredit versions released on vim.org
NeoBundle 'majutsushi/tagbar' " Vim plugin that displays tags in a window, ordered by class etc.
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/gundo.vim'
"NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'terryma/vim-expand-region'
"NeoBundle 'tpope/vim-classpath'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/scratch'
NeoBundle 'walm/jshint.vim'


filetype plugin indent on     " required!

NeoBundleCheck

syntax on

" Set encoding
set encoding=utf-8


set showcmd    " Show (partial) command in status line.
set showmatch  " Show matching brackets.
set autowrite  " Automatically save before commands like :next and :make
set hidden     " Hide buffers when they are abandoned
set mouse=a    " Enable mouse usage (all modes) in terminals
set noshowmode " Don't show -- INSERT -- in the modeline


" Searching
set hlsearch        " Highlight search results
set incsearch		" Incremental search
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching


" Rulers and line numbers
set number          " Show line numbers
set ruler           " make sure that the ruler is displayed
" set laststatus=0  " Status bar never
" set laststatus=1  " Status bar only when more than one window
set laststatus=2    " Status bar always
set colorcolumn=81,121 " 80 column lines, highlight the 81st column
let g:Powerline_symbols = 'fancy'

" Indentation and Whitespace
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:▸\ ,eol:¬,trail:•
set formatprg=par\ w80r

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Shortcut to rapidly toggle `set list`
" ws for `whitespace`
nmap <leader>ws :set list!<CR>

" Shortcut to remove trailing whitespace
nmap <leader>wr :%s/\s\+$//g<CR>


" Error bell
" set vb t_vb=        " Visual beep, less annoying then audible one
" set novisualbell    " but we don't really want either one
" New improved error bell supression
set visualbell        " Use a visual bell instead of an audible one
set vb t_vb=          " Set the visual bell to nothing


" Wildmenu
set wildmenu
"set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc


" Directories for swp files
set backupdir=~/.vimswp
set directory=~/.vimswp

" Save undo
set undofile
set undodir=~/.vimundo


"" Cursor Movement Options
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start


" have % bounce between angled brackets, as well as other kinds:
"set matchpairs+=<:>


" Let the cursor move all over the place
" set virtualedit=all


" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=2


" Use modeline overrides; Off for security reasons
" set modeline
" set modelines=10
set nomodeline


""" Colorscheme Stuff

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark " Although the colorscheme should be setting this anyway
"set background=light " Although the colorscheme should be setting this anyway

" for 256 color terminal
set t_Co=256
"colorscheme wombat256
"colors solarized
colors zenburn

"" end Colorscheme Stuff


""" Ctrlp
let g:ctrlp_map = '<c-x><c-f>'
let g:ctrlp_custom_ignore = { 'dir': '\v(<out>|<repl>|<db>|<target>)' }
"let g:ctrlp_prompt_mappings = {
"  \ 'PrtBS()':              ['<bs>', '<c-]>'],
"  \ 'PrtDelete()':          ['<del>'],
"  \ 'PrtDeleteWord()':      ['<c-w>'],
"  \ 'PrtClear()':           ['<c-u>'],
"  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
"  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
"  \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
"  \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
"  \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
"  \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
"  \ 'PrtHistory(-1)':       ['<c-j>'],
"  \ 'PrtHistory(1)':        ['<c-k>'],
"  \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
"  \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
"  \ 'AcceptSelection("t")': ['<c-t>'],
"  \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
"  \ 'ToggleFocus()':        ['<s-tab>'],
"  \ 'ToggleRegex()':        ['<c-r>'],
"  \ 'ToggleByFname()':      ['<c-d>'],
"  \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
"  \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
"  \ 'PrtExpandDir()':       ['<tab>'],
"  \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
"  \ 'PrtInsert()':          ['<c-\>'],
"  \ 'PrtCurStart()':        ['<c-a>'],
"  \ 'PrtCurEnd()':          ['<c-e>'],
"  \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
"  \ 'PrtCurRight()':        ['<c-l>', '<right>'],
"  \ 'PrtClearCache()':      ['<F5>'],
"  \ 'PrtDeleteEnt()':       ['<F7>'],
"  \ 'CreateNewFile()':      ['<c-y>'],
"  \ 'MarkToOpen()':         ['<c-z>'],
"  \ 'OpenMulti()':          ['<c-o>'],
"  \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
"  \ }


" Ruby key bindings and plugin configuration
"let g:ruby_debugger_debug_mode = 1
"let g:ruby_debugger_no_maps = 1
"map <LocalLeader>xb  :call g:RubyDebugger.toggle_breakpoint()<CR>
"map <LocalLeader>xv  :call g:RubyDebugger.open_variables()<CR>
"map <LocalLeader>xm  :call g:RubyDebugger.open_breakpoints()<CR>
"map <LocalLeader>xt  :call g:RubyDebugger.open_frames()<CR>
"map <LocalLeader>xs  :call g:RubyDebugger.step()<CR>
"map <LocalLeader>xf  :call g:RubyDebugger.finish()<CR>
"map <LocalLeader>xn  :call g:RubyDebugger.next()<CR>
"map <LocalLeader>xc  :call g:RubyDebugger.continue()<CR>
"map <LocalLeader>xe  :call g:RubyDebugger.exit()<CR>
"map <LocalLeader>xd  :call g:RubyDebugger.remove_breakpoints()<CR>



" fix yank
inoremap Y y$

" make F1 the same as esc
map <F1> <Esc>
imap <F1> <Esc>

" swap ' and `
" I prefer ' to take me to the same character since it is easier to type and I
" usually want that rather than just the same line
noremap ` '
noremap ' `

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %



" Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" Gundo
nnoremap <leader>g :GundoToggle<CR>



" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>


" JSHint
" 'l' for 'lint'
map <Leader>l :JSHint<CR>

""" Vim Clojure Static
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
"let vimclojure#ParenRainbow=1
" let g:clojure_align_multiline_strings = 1

" Fireplace
nmap <C-J> <Plug>FireplacePrintab
nmap <Leader>e :%Eval<CR>
nmap <Leader>y :A<CR>
nmap <Leader>u :Require!<CR>


""" Paredit
let g:paredit_electric_return = 0


" Slime
let g:slime_target = "tmux"

map <C-C><C-K> :%SlimeSend<CR>

" Scratch
map <Leader>s :Scratch<CR>





" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif





""" Filetypes


autocmd FileType c,cpp,slang set cindent " for C-like programming, have automatic indentation:
" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro


"" Perl
autocmd FileType perl set smartindent                  " for Perl programming, have things in braces indenting themselves

"" Clojure[Script]
autocmd BufNewFile,BufRead *.cljs set ft=clojure

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"" CSS
autocmd FileType css set smartindent                   " for CSS, also have things in braces indented
autocmd FileType css set noexpandtab tabstop=4         " for CSS use genuine tab characters for indentation, to make files a few bytes smaller


"" HTML
autocmd FileType html set formatoptions+=tl autoindent " for HTML, generally format text, but if a long line has been created leave it alone when editing:
autocmd FileType html set noexpandtab tabstop=4        " for HTML use genuine tab characters for indentation, to make files a few bytes smaller


"" JavaScript
autocmd FileType js set autoindent                     " for JavaScript, have things in braces indented
autocmd BufNewFile,BufRead *.json set ft=javascript    " Syntax highlighting for JSON files
autocmd FileType javascript set foldmethod=manual      " I like manual folding for my JavaScript
let g:used_javascript_libs = 'underscore,backbone,jquery'


"" JSP
autocmd FileType jspf set ft=jsp                       " So that jspf files work like jsp files


"" Python
au FileType python set tabstop=4 textwidth=79          " make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )


"" PHP
au BufNewFile,BufRead *.ctp setfiletype php            " set .ctp files to edit like php for cakePHP
au BufNewFile,BufRead *.thtml setfiletype php          " set .thtml files to edit like php for cakePHP
autocmd FileType php,ctp set formatoptions+=tl autoindent
autocmd FileType php,ctp set noexpandtab tabstop=4


"" Markdown
autocmd FileType markdown set expandtab
autocmd FileType markdown set smartindent
autocmd FileType markdown set textwidth=80


"" Sass
autocmd FileType scss set iskeyword+=-
autocmd FileType sass set iskeyword+=-


"" LESS CSS
au BufNewFile,BufRead *.less set filetype=less


"" Ruby
autocmd FileType ruby set expandtab
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
" vim-ruby settings
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
