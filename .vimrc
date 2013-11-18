if has("win32")
	source ~\src\vimfiles\bundle\vim-pathogen\autoload\pathogen.vim
elseif has("win64")
	source ~\src\vimfiles\bundle\vim-pathogen\autoload\pathogen.vim
else
	source ~/src/vimfiles/bundle/vim-pathogen/autoload/pathogen.vim
endif
	execute pathogen#infect("~/src/vimfiles/bundle/{}")

" Map Control-P to print the current token class, for syntax
" highlinghting
nmap <C-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" map leader
let mapleader = ","

runtime macros/matchit.vim  " enables % to cycle through `if/else/endif`

" set syntax highlighting on
syntax enable

" force background mode to dark 
set background=dark

colorscheme solarized

" gvim settings
if has("gui_running")
	if has("gui_macvim")
		set guifont=Monaco:h13
	elseif has("gui_win32")
		set guifont=Lucida_Console:h11:cANSI
	elseif has("gui_win32")
		set guifont=Monaco:h16
	endif
endif

" autoread
set autoread

" set hard line break at 79 cols
set textwidth=79

" Insert line break as you are typing
set formatoptions+=t

" number: Shows line number
set number

" so: sets 7 lines above and bellow the cursor before the window scrolls
set scrolloff=7

" sets the ruler to be displayed
set ruler

" highlights search results as you are typing text
set incsearch

" Automatically create hidden buffers on leaving unsaved buffer 
set hidden

" Map leader + (HJKL) to move to open windows
map <leader><leader>h <C-w>h
map <leader><leader>j <C-w>j
map <leader><leader>k <C-w>k
map <leader><leader>l <C-w>l

" 
map <leader>w :WatchForChanges<CR>

" Map Control + (hl) to cycle though open buffers
map <leader>h :bp<CR>
map <leader>l :bn<CR>

nmap <leader>c gcc
nmap <leader>C gc
nmap <leader>u gcu


" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" nmap: normal mode mapping
" list: shows invisisble charactesrs e.g. carriage returns
nmap <leader>sl :set list!<CR>

nmap <leader>q :xa<CR>

" map semi-colon to colon
nmap ; :

" expandtab/et: sets whether spaces are used rather than the tab character
"set expandtab

" tabstop/ts: sets the width of a tab character
set tabstop=2

" softtabstop/sts: sets the width of a tab when expandtab is enabled
"set softtabstop=4

" shiftwidth/sw: sets the width within normal mode indentation commands
set shiftwidth=2

" filetype: Enables filetype detection on buffer load
set filetype=on

" autoindent: simple indention based on the previous line's indent level
set autoindent

" enables per filetype auto indention rules
filetype plugin on
filetype indent on
set smartindent

" if compiled with autocmd
if has("autocmd")

    " autocmd FileType: executes the command on matching filetype
    " setlocal:  applies the command to the currently loaded buffer
		
		" Per file settings white-space settings  
    autocmd FileType css setlocal ts=2 sts=2 sw=2 omnifunc=csscomplete#CompleteCSS
    autocmd FileType html setlocal ts=2 sw=2 omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal ts=2 sts=2 sw=2 cindent omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal ts=4 sts=4 sw=4 cindent
    autocmd FileType cs setlocal ts=4 sts=4 sw=4 cindent
    
    " map xml type files to xml
    autocmd BufNewFile,BufRead *.rss,*.atom,*.csproj,*.csproj.user,*.msbuild,*.config,*.proj,*.targets setfiletype xml
		autocmd BufNewFile,BufRead,BufWrite *.scss set filetype=scss
	endif

" Super tab settings
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:DirDiffExcludes = "bin,obj,.git,*.suo,*.user,*.dll,*.pdb,*.swp"

" emmet
nmap <leader>e <C-y>,
