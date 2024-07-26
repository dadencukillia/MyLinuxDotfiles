" Outfit Settings

:set number
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set scrolloff=5
:set nowrap
:set formatoptions-=t
:let mapleader=" "

" Plugins

call plug#begin()

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)

Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/neoclide/coc.nvim', { 'branch': 'release' }

Plug 'dense-analysis/ale'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'nvim-lualine/lualine.nvim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" Plugins Settings

set termguicolors
lua require("bufferline").setup({})

nnoremap <C-]> :ALEGoToDefinition<cr>
nnoremap <C-[> :ALEFindReferences<cr>
nnoremap <C-h> :ALEHover<cr>
nnoremap <C-s> :w<CR>
nnoremap <leader>e :NvimTreeToggle<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap gb :bnext<cr>
nnoremap gB :bNext<cr>
nnoremap <leader>t :bel horizontal terminal<cr>
:tnoremap <Esc> <C-\><C-n>

colorscheme catppuccin
set clipboard+=unnamedplus

" Redirecting to the Lua config

lua require("init")
