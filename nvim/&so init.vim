call plug#begin()

Plug 'sbdchd/neoformat'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf.vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'dkarter/bullets.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'navarasu/onedark.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mattn/emmet-vim'
Plug 'p00f/nvim-ts-rainbow'
Plug 'Mofiqul/dracula.nvim'
Plug 'itchyny/lightline.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'ap/vim-css-color'

call plug#end()

lua require('unknown009')

colorscheme nord

let mapleader = " "

set nu rnu
syntax on
set ts=4 sw=4
set splitbelow splitright

"Ctrl+s to save
nnoremap <silent><c-s> :<c-u>update<cr>
nnoremap <silent><c-w><c-x> :q!<cr>
set fillchars+=vert:'
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

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" LightLine in vim
let g:lightline = {
			\'colorscheme': 'wombat',
			\}

" Ranger Plugin
let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
