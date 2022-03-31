source $HOME/.config/nvim/vim-plug/plugins.vim
lua require('unknown009')

colorscheme nord " Settings colorscheme

let mapleader = ","

set nu rnu
syntax on
set ts=4 sw=4
set splitbelow splitright

"Ctrl+s to save
nnoremap <silent><c-s> :<c-u>update<cr>
nnoremap <silent><c-w><c-x> :q!<cr>
" vertical seperator design
set fillchars+=vert:'
" Escape from Terminal inside VIM
tnoremap <Esc> <C-\><C-n>
inoremap <silent><expr> <c-space> coc#refresh()
" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"

nnoremap <Leader><space> :noh<cr>

nmap <F8> :TagbarToggle<CR>

" NERDTree Keys
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd TermOpen * setlocal nonumber norelativenumber


" LightLine in vim
let g:lightline = {
			\'colorscheme': 'wombat',
			\}

" Ranger Plugin
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
