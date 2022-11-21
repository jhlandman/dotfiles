HOME = os.getenv("HOME")


-- leader
vim.g.mapleader=' '

-- basics
vim.o.encoding='utf-8'
vim.o.backspace='indent,eol,start'
vim.o.history=5000
vim.o.nocompatible=true

-- fix waiting times
vim.o.timeout=false
vim.o.ttimeout=true
vim.o.ttimeoutlen=100

-- display
vim.o.showmatch=true
vim.o.scrolloff=8
vim.o.wrap=false
vim.o.colorcolumn=100
vim.o.ttyfast=true
vim.o.cursorline=true

-- instructions
vim.o.mouse="a"		-- enable mouse click
vim.o.incsearch=true
vim.o.ignorecase = true -- ignore letter case when searching
vim.o.smartcase = true -- case insentive unless capitals used in search
vim.o.wildmode="longest,list"

-- tabs
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab=true -- expand tabs to spaces

-- swapfiles
vim.o.backup = true -- use backup files
vim.o.writebackup = false
vim.o.swapfile = false -- do not use swap file
vim.o.undodir = HOME .. '/.vim/tmp/undo//'     -- undo files
vim.o.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
vim.o.directory = '/.vim/tmp/swap//'   -- swap files

-- line numbers
vim.o.number=true
vim.o.relativenumber=true

vim.cmd('colorscheme gruvbox')


