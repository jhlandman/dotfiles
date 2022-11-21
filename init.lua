require('plugins')
require('settings')
require('lsp-config')
require('treesitter')
require('mappings')


vim.cmd([[
" TODO ->> you are nearly done here, just find better colours for the text
" Instructions 
" NB ->> you can also read through the remaps below for help
" \ + ff for telescope fuzzy finding
" gcc to comment in and comment out lines
" ctrl-e to toggle nerdtree 
" Tab and shift-tab to cycle through coq options
" ctrl + o to go back from going into definition
" send to ipython terminal ctrl-c then ctrl-c


" if (has("nvim"))
"     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
"
" " This is the vimplug stuff
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
"
" call plug#begin('~/.vim/bundle')
"
"     " Theme
"     Plug 'kien/rainbow_parentheses.vim'
"     Plug 'jiangmiao/auto-pairs'
"     
"     " Fuzzy find
"     Plug 'nvim-telescope/telescope.nvim'
"     " run :telescope checkhealth once you have installed this
"     Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"     " run :treesitter checkhealth once you have installed this (has other cmd
"     " dependencies)
"
"     " Statusline
"     Plug 'feline-nvim/feline.nvim'
"
"     " Comments
"     Plug 'numToStr/Comment.nvim'
"
"     " lsp
" 	Plug 'neovim/nvim-lspconfig'
"
" 	" file system
"     Plug 'preservim/nerdtree'
"
"     " floating terminal
"     Plug 'voldikss/vim-floaterm'
"
" call plug#end()
"
" * These are my theme based things
" set termguicolors
" lua require('feline').setup()
" lua require('feline').winbar.setup()
" lua require('colorizer').setup()
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"  highlight = {
 "     enable = true,
 "     custom_captures = {
"   -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
"     ["foo.bar"] = "Identifier",
"   },
"   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"   -- Using this option may slow down your editor, and you may see some duplicate highlights.
"   -- Instead of true it can also be a list of languages
"},
"}
"EOF
"colorscheme gruvbox

" These are my editor based things
"lua require('Comment').setup()
" inserting rainbow parenthesis
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" let mapleader=" "

" No remaps
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nnoremap <C-e> :NERDTreeToggle<CR>
" nnoremap <C-J> :bnext<CR>
" nnoremap <C-K> :bprev<CR>
" nnoremap <leader>q :enew<bar>bd #<CR>
" nnoremap <C-F> :Prettier<CR>
" nnoremap <silent> gt :FloatermNew --wintype=vsplit --position=right --name=terminal zsh<CR>
" nnoremap <silent> gp :FloatermNew --wintype=vsplit --position=right --name=terminal ipython3 --no-autoindent<CR>
" nnoremap <silent> gw :FloatermSend<CR>
" vnoremap gw :FloatermSend<CR>

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
" going to use neovim-lsp
" TODO set up lazy git with gg floatterm
]])
