"" Taglist
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
map  <silent> <F2> <ESC>:TlistToggle<CR>
map! <silent> <F2> <ESC>:TlistToggle<CR>

let mapleader=','
set backspace=indent,eol,start
set fileencoding=utf-8
set fileencodings=utf-8,cp949,ucs-bom
set termencoding=utf-8
set enc=utf-8 nobomb
set history=100
set nu
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set autochdir
set incsearch
set hlsearch
"set paste
set autowrite
set novisualbell
set noerrorbells
set t_vb=f
set showmode
set showcmd

"" tab window
map <C-h> gT
map <C-l> gt
map! <C-h> <ESC>gT
map! <C-l> <ESC>gt
map <C-k> <C-w><C-w>
map! <C-k> <ESC><C-w><C-w>

map <C-e> :Vexplore<CR>
let g:netrw_winsize=20
let g:netrw_chgwin=20
let g:netrw_liststyle=4


set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

map  <F4> <ESC>:!ctags *.py *.cpp *.c *.scala <CR>
map! <F4> <ESC>:!ctags *.py *.cpp *.c *.scala <CR>

"" buffer
map <leader>n :bn<CR>
map <leader>p :bp<CR>

"" Remove tailing white space
autocmd BufWritePre * :%s/\s\+$//e

" indentation
vnoremap < <gv
vnoremap > >gv

"" Replace four spaces into tab
noremap <leader>rt :%s/    /\t/g<CR>

"" mapping function keys for screen
"" <Ctrl+V><key> <key>
map [11~ <F1>
map [12~ <F2>
map [13~ <F3>
map [14~ <F4>
map! [11~ <F1>
map! [12~ <F2>
map! [13~ <F3>
map! [14~ <F4>

"" python-mode options
let g:pymode_lint_ignore="W191,W0401,E501,E225,E266,E221,E128,E701"
let g:pymode_indent=1
let g:pymode_options_colorcolumn=0
let g:pymode_rope_complete_on_dot=0


"" vim-fugitive
nmap <space>gb :Gblame<cr>
nmap <space>gs :Gstatus<cr>
nmap <space>gc :Gcommit -v<cr>
nmap <space>ga :Git add -p<cr>
nmap <space>gm :Gcommit --amend<cr>
nmap <space>gp :Gpush<cr>
nmap <space>gd :Gdiff<cr>
nmap <space>gw :Gwrite<cr>

"" prevent preview window
set completeopt-=preview

"" set color scheme
colo ron


