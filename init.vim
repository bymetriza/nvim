" enables syntax highlighting
syntax on
" Configs
set encoding=UTF-8
" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set smarttab
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase
" hide vim things because of lightline
set noshowmode
" gitsigns
set signcolumn=number

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive' " Git integration
Plug 'lewis6991/gitsigns.nvim' " Gitsigns
Plug 'neovim/nvim-lspconfig' " Lsp
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
"
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " Treesitter
Plug 'jiangmiao/auto-pairs' " auto brackets
Plug 'scrooloose/nerdcommenter' " for better commenting
Plug 'frazrepo/vim-rainbow' " Rainbow brackets
Plug 'scrooloose/nerdtree' " Nerdtree

Plug 'preservim/tagbar' " Tagbar
Plug 'machakann/vim-highlightedyank' " Highlight yanked area
Plug 'http://github.com/ryanoasis/vim-devicons' " Developer Iconss
Plug 'ap/vim-css-color' " Css color preview
Plug 'sbdchd/neoformat' " Formatting
Plug 'terryma/vim-multiple-cursors' " Multiple cursors
Plug 'farmergreg/vim-lastplace' " Intelligent opening
Plug 'tpope/vim-surround' " For surrounding text in v mode

call plug#end()

" Calling lua namespace 
lua require('bymetrix/telescope')
"lua require('bymetrix/lightline')
lua require('bymetrix/gitsigns')
lua require('bymetrix/lsp')
lua require('bymetrix/treesitter')


" declare your color scheme
colorscheme gruvbox
" Use this for dark color schemes
set background=dark

" Vim rainbow
let g:rainbow_active = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" Keymaps and shit
let mapleader = ' '

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>

nnoremap <leader>t b:NERDTree<Cr>
nnoremap <leader>tt g:NERDTree.Close<Cr>

nmap <F8> :TagbarToggle<CR>
nnoremap <leader>x :wq!<Cr>
nnoremap <leader>xx :qall!<Cr>
nnoremap <C-s> :w!<Cr>

" insert modkje
inoremap jk <Esc><Cr>
inoremap <C-s> :w!<Cr>
