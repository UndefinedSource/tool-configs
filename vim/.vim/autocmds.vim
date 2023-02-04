autocmd BufWinLeave *.* mkview "Save the current window's content like folds
autocmd BufWinEnter *.* silent loadview "Load the current file's saved content

autocmd FileType netrw setlocal bufhidden=delete

autocmd BufLeave,WinLeave * setlocal statusline=%f\ %m
autocmd BufEnter,WinEnter * setlocal statusline=
