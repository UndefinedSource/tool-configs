function AddComment()
	let fileType = {
		\ 'vim': '"',
		\ 'python': '#',
		\ 'java': '//'
		\ }

	if has_key(fileType, &ft)
		exe 'norm i'.fileType[&ft].' '
	else
		return
	endif
endfunction

function RemoveComment()
	exe 'norm xx'
endfunction

vnoremap <leader>// :call AddComment()<Enter>
vnoremap <leader>?? :call RemoveComment()<Enter>
