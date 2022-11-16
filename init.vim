" TODO ->> you are nearly done here, just find better colours for the text
" Instructions 
" NB ->> you can also read through the remaps below for help
" \ + ff for telescope fuzzy finding
" gcc to comment in and comment out lines
" ctrl-e to toggle nerdtree 
" Tab and shift-tab to cycle through coq options
" \ + t to test nearest
" \ + l to test last
" ctrl + o to go back from going into definition
" send to ipython terminal ctrl-c then ctrl-c


" These are general things
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " set relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim"
set noswapfile              " disable creating swap file"


if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" This is the vimplug stuff
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

    " Theme
    Plug 'morhetz/gruvbox'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'jiangmiao/auto-pairs'
    
    " Fuzzy find
    Plug 'nvim-telescope/telescope.nvim'
    " run :telescope checkhealth once you have installed this
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " run :treesitter checkhealth once you have installed this (has other cmd
    " dependencies)

    " Statusline
    Plug 'feline-nvim/feline.nvim'

    " Comments
    Plug 'numToStr/Comment.nvim'

    " lsp
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " file system
    Plug 'preservim/nerdtree'

    " testing
    Plug 'vim-test/vim-test'

    " interactive python ->> was going to do this using slime :)
    Plug 'jpalardy/vim-slime'

call plug#end()

" * These are my theme based things
set termguicolors
lua require('feline').setup()
lua require('feline').winbar.setup()
lua require('colorizer').setup()
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
  },
}
EOF
colorscheme gruvbox

" setting vim-slime
let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
filetype plugin on

" These are my editor based things
lua require('Comment').setup()
" inserting rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" No remaps
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <C-e> :NERDTreeToggle<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
noremap <C-F> :Prettier<CR>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <leader>q :enew<bar>bd #<CR>

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
nmap <silent> gb :bd<CR>
