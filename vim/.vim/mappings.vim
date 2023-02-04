nnoremap Y y$			"Copy from the current column to the end of line
inoremap a' <Esc><S-a>

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

" ******************************************************
" Sets
" ******************************************************
nnoremap <Leader>sl :set list<Enter>
nnoremap <Leader>snl :set nolist<Enter>

" ******************************************************
" Key to Key
" ******************************************************
nnoremap ; :
vnoremap ; :
vnoremap <Leader><Leader> <Esc>

" ******************************************************
" Bracekts and Quotes
" ******************************************************
"Enclose word with brackets or quotes
nnoremap "iw ciw""<Esc>hpl
nnoremap 'iw ciw''<Esc>hpl
nnoremap (iw ciw()<Esc>hpl
nnoremap [iw ciw[]<Esc>hpl
nnoremap {iw ciw{}<Esc>hpl

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

" ******************************************************
" HTML
" ******************************************************
" Auto close html tag then insert new line between the tag pair
inoremap ><Enter> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>

"Auto close html tag then insert mode between the tag pair
inoremap ><Tab> ><Esc>F<lyt>A</<C-r>"><Esc>F<i
" ><Esc>	type ">" then escape
" F<		find "<" backwards
" l			One character to the right 
" yt>		Yank until >
" A			insert mode at the end of line
" </		Type </
" <C-r>"	Paste in insert mode
" ><Esc>	Type > then escape
" F<		Find < backwards
" i			Insert mode
