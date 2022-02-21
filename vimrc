" key mapping
let mapleader=" "

map <leader>f :Goyo \| hi Normal guibg=NONE ctermbg=NONE \| set linebreak<CR>
map <leader>o :setlocal spell! spelllang=en_US<CR>
map <leader>s :!clear && shellcheck %<CR>
map <leader>w :w !doas tee %<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'junegunn/goyo.vim'
Plug 'DraggonFantasy/vim-minetest-api'
Plug 'ervandew/supertab'
Plug 'preservim/nerdtree'

call plug#end()

" code completion
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>' 
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
let g:SuperTabDefaultCompletionType = "<C-x><X-o>"
" minetest lua
let g:MinetestApiCompleter_api_location = "/usr/share/doc/minetest-5.5.0/lua_api.txt"


" misc options
set number
set splitbelow splitright
set wildmode=longest,list,full

" theme
syntax enable
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE
