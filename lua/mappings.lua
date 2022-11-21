function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- telescope
nmap('<leader>ff', ':Telescope find_files<CR>')
nmap('<leader>fg', ':Telescope live_grep<CR>')
nmap('<leader>fb', ':Telescope buffers<CR>')
nmap('<leader>fh', ':Telescope help_tags<CR>')

-- nerdtree
nmap('<leader>n', ':NERDTreeFocus<CR>')
nmap('<leader>ns', ':NERDTree<CR>')
nmap('<leader>nt', ':NERDTreeToggle<CR>')
nmap('<leader>nf', ':NERDTreeFind<CR>')

-- buffer scrolling
nmap('<leader>bn', ':bnext<CR>')
nmap('<leader>bp', ':bprev<CR>')
nmap('<leader>bq', ':bd<CR>')

-- floatterms
nmap('<leader>gt', ':FloatermNew --wintype=vsplit --position=right --name=terminal zsh<CR>')
nmap('<leader>gp', ':FloatermNew --wintype=vsplit --position=right --name=terminal ipython3 --no-autoindent<CR>')
nmap('<leader>gg', ':FloatermNew --wintype=vsplit --position=right --name=terminal lazygit<CR>')
nmap('<leader>gw', ':FloatermSend<CR>')
vmap('<leader>gw', ':FloatermSend<CR>')

-- copilot
imap('<C-w>', '<Plug>(copilot-next)')
imap('<C-e>', '<Plug>(copilot-previous)')

