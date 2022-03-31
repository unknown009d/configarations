if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

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
Plug 'mhinz/vim-startify'

call plug#end()

" LightLine in vim
let g:lightline = {
			\'colorscheme': 'wombat',
			\}

" COC autocomplete
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
	" Use <c-space> to trigger completion.
	"if has('nvim')
	"  inoremap <silent><expr> <c-space> coc#refresh()
	"else
	"  inoremap <silent><expr> <c-@> coc#refresh()
	"endif

set completeopt=menu,preview
