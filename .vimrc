" go to normal mode with jk
inoremap jk <ESC>
let mapleader = " "
syntax on 
set number relativenumber "Enable hybrid numbers(relative numbers but on current line there is absolute number)
set breakindent
set noswapfile 
set hlsearch 
set ignorecase 
set incsearch
set wrap
set linebreak
set nolist
set textwidth=0 wrapmargin=0
set noshowcmd noruler
nnoremap <leader>ot :tabedit
nnoremap <leader>ct :tabclose

" maps to compile and run c++ code
map <F5> :!g++ -o  %:r.out % -std=c++20 && ./%:r.out<CR>
nnoremap <leader>co :make!<CR>
nnoremap <leader>cm :!cmake --build ./build/ && ./build/Main<CR>
nnoremap <leader>cmr :!cmake --build ./Release/ && ./Release/Main<CR>
nnoremap <leader>cn :!cmake --build ./build/ && ./build/Main 
nnoremap <leader>cr :!cmake --build ./build/ && ./build/tests/tests<CR>

" map brackets to close them by default
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" map :write to <ctrl + s>
map <C-s> :write<CR>

set bg=dark
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='gruvbox'

map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <leader>cnt :NERDTreeClose<CR>

" Emmet plugin code
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,htmldjango  EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" tab intendent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
filetype plugin indent on

" indentLine plugin
" let g:indentLine_setConceal = 0
let g:indentLine_char = '▏'

" debugging config
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" set theme
set t_Co=256
colorscheme gruvbox

" Go up and down in vim autocomplete(ctrl + n)
" with using 'l' and 'k'
inoremap <expr> i ((pumvisible())?("\<C-n>"):("i"))
inoremap <expr> o ((pumvisible())?("\<C-p>"):("o"))

set nobackup
