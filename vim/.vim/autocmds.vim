autocmd FileType netrw setlocal bufhidden=wipe			"Don't allow Netrw as a file to save
autocmd BufLeave,WinLeave * setlocal statusline=%f\ %m	"Set the current window to have the following statusline option
autocmd BufEnter,WinEnter * setlocal statusline=		"Redraw statusline entering new window

"Mappings
"Auto close html tag then insert new line between the tag pair
autocmd FileType html inoremap ><Cr> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>
"Auto close html tag then insert mode between the tag pair
autocmd FileType html inoremap ><Tab> ><Esc>F<lyt>A</<C-r>"><Esc>F<i
