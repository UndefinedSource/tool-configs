set statusline= "Clear statusline in case of restarting a file

set statusline+=%#statusline_mode#			"Hightlight mode group
set statusline+=\ %n						"Show current buffer number
set statusline+=\ %{g:currentMode[mode()]}	"Show current mode
set statusline+=\ %m						"Show "[+]" if the file is modified
set statusline+=%*							"End highlight

set statusline+=%#statusline_path#	"Hightlight path group
set statusline+=\ %F\				"Full path
set statusline+=%*					"End highlight

set statusline+=%=						"Start add statusline options to the right
set statusline+=\ Ln:\ %l,\ Col:\ %c	"Line number and column number
set statusline+=\ \|\ %p%%				"Percentage of current line from the top
set statusline+=\ \|\ %Y				"File type in uppercase
set statusline+=\ \|\ %{&fileencoding}  "File encoding
set statusline+=\ \|\ %{ConvertByteToMegaByte(GetFileSize())}MB "Show file size in MB
set statusline+=\ [%{strftime('%b\ %d\ %a\ %H:%M',getftime(expand('%')))}]  "Current time

set laststatus=2
