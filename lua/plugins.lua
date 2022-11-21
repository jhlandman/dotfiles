local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

return require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    -- theme
    use 'morhetz/gruvbox'
    -- want to look into coloured parens
    --use 'junegunn/rainbow_parentheses.vim'
    use 'norcalli/nvim-colorizer.lua'
    vim.cmd('set termguicolors')
    require'colorizer'.setup()

    -- might also want matchup 'andymass/vim-matchup'

    -- general dev
    use 'neovim/nvim-lspconfig'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- TODO figure out autocommenter

    -- fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- comments
    --use 'numToStr/Comment.nvim'

    -- file system
    --use 'preservim/nerdtree'

    --  floating terminal
    --use 'voldikss/vim-floaterm'

end)

