" Map Control-P to print the current token class, for syntax
" highlinghting
nmap <C-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

call pathogen#infect('~\src\vimfiles\vimfiles\bundle')

" set syntax highlighting on
syntax enable

" force background mode to dark 
"set background=dark

colorscheme desert

" gvim settings 
if has("gui_running") 
	colorscheme solarized
	set guifont=Lucida_Console:h11:cANSI
endif

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

" Automatically create hidden buffers on unsaved exit
set hidden

" Turn on hiddens by default
" set list

" let mapleader: sets the <leader> variable in mapping directives default is \
"let mapleader = ","

" Map leader + (HJKL) to move to open windows
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" Map Control + (hl) to cycle though open buffers
map <C-h> :bp<CR>
map <C-l> :bn<CR>

" my experience is that window only windows needs this
if has("win32")
    set backspace=eol,start,indent
endif

" nmap: normal mode mapping
" list: shows invisisble charactesrs e.g. carriage returns
nmap <leader>sl :set list!<CR>

" open a new horizontal window, already in explore mode
nmap <leader>e :Explore<CR>

" map semi-colon to colon
nmap ; :

" super tab already does this
"imap <tab> <C-X><C-O>

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

" Basic brace pair completion from http://vim.wikia.com/wiki/VimTip630#Plugins 
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" enables per filetype auto indention rules
filetype plugin on
filetype indent on

" if compiled with autocmd
if has("autocmd")

    " autocmd FileType: executes the command on matching filetype
    " setlocal:  applies the command to the currently loaded buffer

    " Per file settings white-space settings  
    autocmd FileType css setlocal ts=2 sts=2 sw=2 omnifunc=csscomplete#CompleteCSS
    autocmd FileType html setlocal ts=2 sts=2 sw=2 omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal ts=2 sts=2 sw=2 cindent omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal ts=4 sts=4 sw=4 cindent
    autocmd FileType cs setlocal ts=4 sts=4 sw=4 cindent
    
    " map xml type files to xml
    autocmd BufNewFile,BufRead *.rss,*.atom,*.csproj,*.csproj.user,*.msbuild,*.config setfiletype xml
		autocmd BufNewFile,BufRead *.scss setfiletype scss
	endif

" Super tab settings
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" set dir dif file exclusion
let g:DirDiffExcludes = "bin,obj,.git,*.suo,*.user,*.dll,*.pdb,*.swp"

" Alt mappings can be weird in VIM, but this matches VS
let g:user_zen_expandabbr_key="<A-z>"
