command! Vrc :tabe $MYVIMRC "open vimrc in a new tab by typing :Vrc
command! -nargs=* Bc :call Abc(<f-args>)

function Abc(...)
	echo a:000
endfunction
