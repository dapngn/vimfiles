"bootstrap by first running ./bundle/getBundles.sh
source ~/src/vimfiles/bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect("~/src/vimfiles/bundle/{}")

" map leader
let mapleader = ","

runtime macros/matchit.vim  " enables % to cycle through `if/else/endif`

" set syntax highlighting on
syntax enable

" force background mode to dark 
set background=dark

colorscheme solarized 

if has("gui_running")
  if has("gui_macvim")
 		set guifont=Monaco:h13
 	elseif has("gui_win32") || has ("gui_win64")
 		set guifont=Lucida_Console:h11:cANSI
  endif
endif

" autoread
set autoread

" set hard line break at 80 cols
set textwidth=80
                                                                             
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

" Automatically create hidden buffers on leaving unsaved buffer> 
set hidden

" Map leader + (HJKL) to move to open windows
noremap <leader><leader>h <C-w>h<CR>
noremap <leader><leader>j <C-w>j<CR>
noremap <leader><leader>k <C-w>k<CR>
noremap <leader><leader>l <C-w>l<CR>

" 
noremap <leader>w :WatchForChanges<CR>

" Map Control + (hl) to cycle though open buffers
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" nmap: normal mode mapping
" list: shows invisisble charactesrs e.g. carriage returns
nmap <leader>sl :set list!<CR>

nmap <leader>q :xa<CR>

" map semi-colon to colon
nmap ; :

" tabstop/ts: sets the width of a tab character
set tabstop=4

" expandtab/et: sets whether spaces are used rather than the tab character
set expandtab

" softtabstop/sts: sets the width of a tab when expandtab is enabled
set softtabstop=4

" shiftwidth/sw: sets the width within normal mode indentation commands
set shiftwidth=4

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
	endif

" vim-emmet
let g:user_emmet_mode='n'
nmap <leader>e <C-y>,

" nerdtree
map <leader><leader>e :NERDTreeToggle<CR>

" syntastic initial config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'C:\tools\tidy-5.2.0-win64\bin\tidy.exe'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-","trimming empty"]
