syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root = 'true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0

" ag is fast enough that CtrlP doesn't need to cache "
let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>

nnoremap <leader>t :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>g :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <C-j> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-k> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-l> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-m> :lua require("harpoon.ui").nav_file(4)<CR>
