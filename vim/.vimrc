set cursorline
set foldcolumn=0	"if any, remove whitespaces before line number
set timeoutlen=500	"Timeout in miliseconds before exeucting a mapping
set scrolloff=8		"Scroll up or down when the cursor is [num] lines far from the top or bottom
set wildoptions=pum	"Set wildmenu as vertical wildmenu
syntax enable

"******************************************************
" Source Files (files with no dependency) - import functions, mappings, and etc into vimrc
" ******************************************************
source $HOME/.vim/commands.vim
source $HOME/.vim/lets.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/mappings.vim
source $HOME/.vim/autocmds.vim
source $HOME/.vim/abbrevs.vim
source $HOME/.vim/snippets.vim
source $HOME/.vim/statuslines.vim
source $HOME/.vim/highlights.vim

" ******************************************************
" Set - Directory & File Path
" ******************************************************
set path+=**						"Allow file & directory search to be recursive
set wildignore+=**/node_modules/**  "For :find, ignore searching for files in node_modules directory

" ******************************************************
" Set - File
" ******************************************************
set encoding=utf-8
set listchars=tab:→\ ,eol:↲,space:· "Show tab character as → and newline character as ↲ character
set re=2							"Prevent lag while editing Typescript file
set hidden							"Allow switching unsaved files

" ******************************************************
" Set - General Setting
" ******************************************************
set belloff=all							"Mute all beep sounds, or use set noerrorbells
set clipboard=unnamed					"Share the clipboard with the OS
set wildmenu							"<Tab> to choose next suggestion. <Ctrl> + <Tab> to choose previous suggestion
set nrformats+=alpha					"Add alphabet as number format to be incremented (C-a) or decremented (C-x)
set omnifunc=syntaxcomplete#Complete	"Auto-completion for most langauges (HTML, CSS, JS, Python)

" ******************************************************
" Set - Indentation 
" ******************************************************
set ts=4 sw=4 sts=4 "Set shift width to 4 spaces, tab width to 4 spaces
set autoindent

" ******************************************************
" Set - No
" ******************************************************
set nowrap			"Do not break line for long lines
set noswapfile		"Do not create swap file
set nobackup		"Do not create backup file
set nocompatible	"Set to not compatible with 'vi'
set noshowmode		"Do not show modes at the bottom like --INSERT--

" ******************************************************
" Set - Number
" ******************************************************
set number							"Show line number
set relativenumber					"Show relative line number from the current line

" ******************************************************
" Set - Search
" ******************************************************
set hlsearch   "Higlight search
set incsearch  "Incremental search. Highlight matches as typing
set ignorecase "Ignore case
set smartcase  "Allow case sensitive search if capital letter is typed

" ******************************************************
" Set - Show
" ******************************************************
set showmatch	"Highlight matching bracket
set showcmd		"Show currently typed keys in normal mode. Must be after 'set nocompatible'

" ******************************************************
" Set - Tab
" ******************************************************
set showtabline=2 "Show tabs at the top even if there's one tab
set tabpagemax=10 "Open up to 10 tabs when opening with 'vim -p file1,file2,fil3'
