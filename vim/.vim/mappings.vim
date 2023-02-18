nnoremap Y y$			"Copy from the current column to the end of line
inoremap a' <Esc><S-a>|	"Go to the end of line in Insert mode

"Quit
nnoremap <Leader>qa :qa!<Cr>
nnoremap <Leader>qq :q<Cr>

"Back to Normal mode
inoremap jj <Esc>
inoremap qq <Esc>
cnoremap qq <C-c>

"Switch Search Highlighting
nnoremap <Leader>hi :set hls!<Return>

"Command-Line Navigation
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

"Netrw
nnoremap <Leader>e :Lex<Cr>
nnoremap - :e %:h<Cr>|	"Open the current directory in Netrw

" ******************************************************
" Sets
" ******************************************************
nnoremap <Leader>l :set list<Cr>
nnoremap <Leader>nl :set nolist<Cr>

" ******************************************************
" Key to Key
" ******************************************************
nnoremap ; :
vnoremap ; :
cnoremap vt vert
vnoremap <Leader><Leader> <Esc>

" ******************************************************
" Brackets and Quotes
" ******************************************************
"Enclose word with brackets or quotes
nnoremap sw" ciw""<Esc>hpl
nnoremap sw' ciw''<Esc>hpl
nnoremap sw( ciw()<Esc>hpl
nnoremap sw[ ciw[]<Esc>hpl
nnoremap sw{ ciw{}<Esc>hpl

nnoremap "aw caw""<Esc>hpl
nnoremap 'aw caw''<Esc>hpl
nnoremap (aw caw()<Esc>hpl
nnoremap [aw caw[]<Esc>hpl
nnoremap {aw caw{}<Esc>hpl

"Auto indent closing bracket for function
inoremap {<Enter> {<Enter><Enter>}<Up><Tab>

"Auto close bracket
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

" ******************************************************
" Window
" ******************************************************
"Navigation shortcuts
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Resize shortcuts
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>
