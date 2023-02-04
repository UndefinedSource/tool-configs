" ******************************************************
" Functions - :call [function] to execute it
" ******************************************************
function GetFileSize()
	return getfsize(expand(@%))
endfunction

function ShowErrMsg(msg)
	echohl ErrorMsg
	echo a:msg
	echohl None
endfunction

function IsNumBinary(num)
	let num = a:num

	while num != 0
		if (num % 10 > 1)	
			return 0
		endif

		let num /= 10
	endwhile

	return 1
endfunction

function ConvertDecimalToBinary(decimal)
	if (type(a:decimal) != 0)
		call ShowErrMsg("Input is not a number")
		return
	endif

	let decimalVal = a:decimal
	let binaryVal = 0
	let base = 1

	while decimalVal > 0
		let lastDigit = decimalVal % 2
		let decimalVal /= 2

		let binaryVal += lastDigit * base
		let base *= 10
	endwhile

	return binaryVal
endfunction

function ConvertBinaryToDecimal(binary)
	if (type(a:binary) != 0)
		call ShowErrMsg("Input is not a number")
		return
	endif

	if (!IsNumBinary(a:binary))
		call ShowErrMsg("Input is not a binary number")
		return
	endif

	let binaryVal = a:binary
	let decimalVal = 0
	let base = 1

	while binaryVal > 0
		let lastDigit = binaryVal % 10
		let binaryVal /= 10

		let decimalVal += lastDigit * base
		let base *= 2
	endwhile

	return decimalVal
endfunction


function ConvertByteToMegaByte(byte)
	return a:byte / 1000 / 1000.0
endfunction

" use it for compiling current file without going to the shell
function CompileFile()
	" Key: extension name. Value: compiler shell command
	let compilers = #{
		\ py: "python3",
		\ js: "node",
		\ ts: "ts-node",
		\ }
	let fileName = @%
	let fileExtension = split(fileName, '\.')[1]

	if has_key(compilers, fileExtension)
		let compilerName = compilers[fileExtension]
		exe ":!" compilerName " " fileName
	else
		echo "Compiler not found"	
	endif
endfunction

"******************************************************
" Print 
" ******************************************************
function PrtNumLineByLine(...)
	if a:0 == 1
		exe ":put=range(1,"a:1")"
	elseif a:0 == 2
		exe ":put=range("a:1","a:2")"
	else
		echohl ErrorMsg
		echo "Invalid input"
		echohl None
	endif
endfunction

function PrtRndNumInList(listLength)
	"a:llistLength is readonly variable
	let listLength = a:listLength
	let list = []

	while listLength > 0
		call add(list, rand() % 10)
		let listLength -= 1
	endwhile

	call append(".", string(list))
endfunction
