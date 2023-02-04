set statusline= "Clear statusline in case of restarting a file

set statusline+=%#mode#						"Hightlight mode group
set statusline+=\ %n						"Show current buffer number
set statusline+=\ %{g:currentMode[mode()]}	"Show current mode
set statusline+=\ %m						"Show "[+]" if the file is modified
set statusline+=%*							"End highlight

set statusline+=%#path# "Hightlight path group
set statusline+=\ %F\ " %F - full path
set statusline+=%*			"End highlight

set statusline+=%=						"Start add statusline options to the right
set statusline+=\ Ln:\ %l,\ Col:\ %c	" %l - line number, %c - column number
set statusline+=\ \|\ %p%%				"Percentage of current line from the top
set statusline+=\ \|\ %Y				" %Y - file type in uppercase
set statusline+=\ \|\ %{&fileencoding}  " File encoding
set statusline+=\ \|\ %{ConvertByteToMegaByte(GetFileSize())}MB "Show file size in MB
set statusline+=\ [%{strftime('%b\ %d\ %a\ %H:%M',getftime(expand('%')))}] " %b = month, %d = day, %a = day of the week, %H:%M = hour and minute

set laststatus=2
