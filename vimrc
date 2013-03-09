" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'FuzzyFinder')
call add(g:pathogen_disabled, 'L9')

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Set the leader
"let mapleader=" "

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim

" Remove ALL auto-commands
":autocmd!

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" Set encoding
set encoding=utf-8


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set autowrite		" Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes) in terminals


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


" Indentation and Whitespace
set tabstop=4       " 4 spaces
set softtabstop=4   " 4 spaces
set shiftwidth=4    " 4 spaces
set noexpandtab
set listchars=tab:▸\ ,eol:¬,trail:•

" Shortcut to rapidly toggle `set list`
" ws for `whitespace`
nmap <leader>ws :set list!<CR>

" Shortcut to remove trailing whitespace
nmap <leader>wr :%s/\s\+$//g<CR>

" Shortcut to toggle relative line numbers
function! ToggleLineNumbers()
	if !exists("s:ToggleLineNumbersState")
		let s:ToggleLineNumbersState = 0
		:set number
	endif

	if s:ToggleLineNumbersState == 1
		let s:ToggleLineNumbersState = 0
		:set number
	endif

	if s:ToggleLineNumbersState == 0
		let s:ToggleLineNumbersState = 1
		:set relativenumber
	endif
endfunction
nmap <leader>r :call ToggleLineNumbers()<CR>

" Use the same symbols as TextMate for tabstops and EOLs

" This should highlight extra space at the end of the line in red but does not
" seem to work
" Found at (http://vim.wikia.com/wiki/Highlight_unwanted_spaces)
"
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()


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

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ convert case over line breaks; also have the cursor keys
" wrap in insert mode:
"set whichwrap=h,l,~,[,]

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

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d :",
        \ &tabstop, &shiftwidth, &textwidth)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

""" Paredit
let g:paredit_electric_return = 0

""" Clojure Static
" let g:clojure_align_multiline_strings = 1

""" Vim Foreplay
nmap <Leader>e :%Eval<CR>
nmap <Leader>y :A<CR>
nmap <Leader>u :Require!<CR>


""" Vim Fugitive
"set statusline=%{fugitive#statusline()}


""" Colorscheme Stuff

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark " Although the colorscheme should be setting this anyway
"set background=light " Although the colorscheme should be setting this anyway

" for 256 color terminal
"set t_Co=256
"colorscheme wombat256
colors solarized

"" end Colorscheme Stuff






""" Remap

" map omnicompletion to work with control + space
imap <c-Space> <c-x><c-o>

" fix yank
map Y y$

" make F1 the same as esc
map <F1> <Esc>
imap <F1> <Esc>

" swap ' and `
" I prefer ' to take me to the same character since it is easier to type and I
" usually want that rather than just the same line
noremap ` '
noremap ' `

" This doesn't work. Yet.
" function! s:ToggleQuickFix ()
" 	if !exists("s:ToggleQuickFixOpen")
" 		let s:ToggleQuickFixOpen = 0
" 	endif
"
" 	if s:ToggleQuickFixOpen == 0
" 		:copen
" 		let s:ToggleQuickFixOpen = 1
" 	endif
"
" 	if s:ToggleQuickFixOpen == 1
" 		:cclose
" 		let s:ToggleQuickFixOpen = 0
" 	endif
"
" endfunction
" map <Leader>q call s:ToggleQuickFix
" noremap <Leader>e :cNext<CR>
" noremap <Leader>r :cprevious<CR>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %

""" end Remap





""" Plugins

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Fuzzy Finder
"map <Leader>ff :FufFile<CR>
"map <Leader>fc :FufCoverageFile<CR>
"map <Leader>fb :FufBuffer<CR>
"map <Leader>fl :FufLine<CR>
"map <Leader>fj :FufJumpList<CR>
"map <Leader>fr :FufDir<CR>
"map <Leader>fmd :FufBookmarkDir<CR>
"map <Leader>fmf :FufBookmarkFile<CR>
"map <Leader>fad :FufBookmarkDirAdd<CR>
"map <Leader>faf :FufBookmarkFileAdd<CR>

" UltiSnips
"set runtimepath+=~/.vim/UltiSnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Default sparkup binding clobbers tag completion and scrolling so change them
" to something else
let g:sparkupNextMapping = '<c-y>'

" JSHint
" 'l' for 'lint'
map <Leader>l :JSHint<CR>

" Tagbar
map <Leader>t :TagbarToggle<CR>
map <Leader>gt :TagbarOpen cjf<CR>

" vim clojure
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1

" Not using nailgun right now because I have found it to be somewhat buggy.
"let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = "ng"

" Use this if `ng` is not in the path
"let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"

" Slime
let g:slime_target = "tmux"

map <C-C><C-B> :%SlimeSend<CR>

" Scratch
map <Leader>s :Scratch<CR>


""" end Plugins





" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif





""" Filetypes

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype plugin indent on
endif



"" C, C++
" get rid of the default style of C comments, and define a style with two stars
" at the start of `middle' rows which (looks nicer and) avoids asterisks used
" for bullet lists being treated like C comments; then define a bullet list
" style for single stars (like already is for hyphens):
" NOT CURRENTLY USING THIS. I LIKE THE DEFAULT STYLE.
" set comments-=s1:/*,mb:*,ex:*/
" set comments+=s:/*,mb:*,ex:*/
" set comments+=fb:*

autocmd FileType c,cpp,slang set cindent " for C-like programming, have automatic indentation:
" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro


"" Perl
autocmd FileType perl set smartindent                  " for Perl programming, have things in braces indenting themselves

"" ClojureScript
autocmd BufNewFile,BufRead *.cljs set ft=clojure

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




" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
