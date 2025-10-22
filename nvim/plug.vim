call plug#begin('~/.vim/nvim-plugins')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'RRethy/base16-nvim'
Plug 'christoomey/vim-system-copy'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Leviathenn/nvim-transparent'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'

call plug#end()
