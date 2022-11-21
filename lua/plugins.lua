local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
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
    use 'norcalli/nvim-colorizer.lua'
    vim.cmd('set termguicolors')
    require'colorizer'.setup()

    -- might also want matchup 'andymass/vim-matchup'

    -- general dev
    use {'neoclide/coc.nvim', branch = 'release'} -- run CocInstall coc-pyright coc-json coc-<find one for bash>
    use 'davidhalter/jedi-vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- comments
    use 'preservim/nerdcommenter'

    -- file system
    use 'preservim/nerdtree'

    --  floating terminal
    use 'voldikss/vim-floaterm'

    -- python
    use 'Vimjas/vim-python-pep8-indent'
    use 'psf/black'
    use 'fisadev/vim-isort'

    -- better brackets
    use 'jiangmiao/auto-pairs'
    use 'p00f/nvim-ts-rainbow' -- has to be enabled in treesitter
end)

