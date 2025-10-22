set rtp +=~/.vim/

set tabstop=2
set softtabstop=2
set shiftwidth=2 smarttab
set expandtab
set mouse=v

set laststatus=2
set number relativenumber
set wildmenu
set autoindent

noremap <C-l> $l 
noremap <C-h> _
noremap <C-k> <C-y>
noremap <C-j> <C-e>

nnoremap <C-Z> u
nnoremap U <C-R>

nnoremap <C-R> :Ex<CR>

nnoremap <C-h> _
nnoremap <C-l> $l
nnoremap <C-j> <C-e>
nnoremap <C-k> <c-y>

" Set more intuitive movement
nnoremap j gj
nnoremap gj j

nnoremap k gk
nnoremap gk k

" Move Lines with Shift + K/J
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Delete selction without copy
nnoremap d "_d
vnoremap d "_d

" Copy current line below
nnoremap <C-Space> :t.<CR>
vnoremap <C-Space> :t.<CR>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

map <c-v> "+p

if filereadable(expand("~/.config/nvim/plug.vim"))
    source ~/.config/nvim/plug.vim
endif

if filereadable(expand("~/.config/nvim/coc.vim"))
    source ~/.config/nvim/coc.vim
endif

if filereadable(expand("~/.config/nvim/treesitter.vim"))
    source ~/.config/nvim/treesitter.vim
endif

nnoremap <C-b> :Files<CR>

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
vmap <C-c> cp
map <C-v> cV

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {
      \ 'p': { 'pattern': 'd[bwd] \??' }
\ }

colorscheme base16-3024
syntax enable

