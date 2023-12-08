function GetCurrentFilePath()
	execute ":redir @+ | echo ".string(expand('%:p')). " | redir END"
endfunction
	
function GetFileSize()
	return getfsize(expand(@%))
endfunction

command! GetCurrentFilePath :call GetCurrentFilePath()
