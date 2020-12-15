set nocompatible			  " be iMproved, required
filetype off				  " required
"
"" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('$HOME/vimfiles/bundle/')
"
"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'taglist.vim'
Plugin 'a.vim'
Plugin 'vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'python-mode'
"
" All of your Plugins must be added before the following line
call vundle#end()			" required

filetype plugin on
"filetype indent on
syntax on

source $JYLEE_CONF_DIR/common.vim

"" functions
function! RunPython()
	silent !echo ""
	silent !echo "<<< Run Python:" '%' "(`date +\%r`) >>>"
	execute('!time python2.7 '. bufname("%").' --default')
endfunction

function! Comment(tag)
	execute "'<,'> s/^/".a:tag."/g"
	let @/=""
endfunction

function! Uncomment(tag)
	execute "'<,'> s/^".a:tag."//g"
	let @/=""
endfunction

if !exists("autocommands_loaded")
	let autocommands_loaded = 1
	augroup filetypesettings
		au FileType python map   <silent> <F5> <ESC>:w<CR>:call RunPython()<CR>
		au FileType python map!  <silent> <F5> <ESC>:w<CR>:call RunPython()<CR>
		au FileType sql  map  <silent> <F5> <ESC>:w<CR>:!hive -f % <CR>
		au FileType sql  map! <silent> <F5> <ESC>:w<CR>:!hive -f % <CR>
		au FileType c,cpp  map  <silent> <F8> <ESC>:!clear; make test<CR>
		au FileType c,cpp  map! <silent> <F8> <ESC>:!clear; make test<CR>
		au FileType python map  <silent> <F8> <ESC>:w<CR>:!python2.7 -m unittest discover -v <CR>
		au FileType python map! <silent> <F8> <ESC>:w<CR>:!python2.7 -m unittest discover -v <CR>
		au FileType python map  <silent> <F9> <ESC>:w<CR>:!python2.7 % <CR>
		au FileType python map! <silent> <F9> <ESC>:w<CR>:!python2.7 % <CR>
		au FileType c,cpp  map  <silent> <F9> <ESC>:!clear; make<CR>
		au FileType c,cpp  map! <silent> <F9> <ESC>:!clear; make<CR>
		au FileType c,cpp  map  <silent> <F10> <ESC>:make clean;make -j4<CR>
		au FileType c,cpp  map! <silent> <F10> <ESC>:make clean;make -j4<CR>
		"au FileType c,cpp map  <silent> <F11> <ESC>:!rm %<.o <CR>:make<CR>
		au FileType sql  vnoremap <silent> <F2> <ESC>:call Comment("--")<CR>
		au FileType sql  vnoremap <silent> <F3> <ESC>:call Uncomment("--")<CR>
		au FileType python,sh  vnoremap <silent> <F2> <ESC>:call Comment("#")<CR>
		au FileType python,sh  vnoremap <silent> <F3> <ESC>:call Uncomment("#")<CR>

	augroup END
endif

"" highlight NOTE comment
"syn keyword		pythonTodo 		NOTE contained
