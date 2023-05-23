call plug#begin()
Plug 'folke/tokyonight.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons' 
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()

let g:NERDTreeIndicatorMapCustom = {
\   "nerdtree-git-status-untracked" : "✹",
\   "nerdtree-git-status-added" : "✚",
\   "nerdtree-git-status-modified" : "✹",
\   "nerdtree-git-status-renamed" : "➜",
\   "nerdtree-git-status-deleted" : "✖",
\   "nerdtree-git-status-other" : "⁈",
\}

colorscheme tokyonight

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

set guifont=Fira\ Code:h10

" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <c-f> :Files<cr>
nnoremap <c-b> :NERDTreeToggle<cr>
