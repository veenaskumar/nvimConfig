local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


vim.g.mapleader = ' '

-- window

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

--clear search which highligth

map('n', '<leader>c', ':nohl<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':q!<CR>')

-- terminal commands
vim.api.nvim_set_keymap('n', '<leader>th', ':belowright split | terminal<CR>', { noremap = true, silent = true }) --open the terminal in belowright in horzontal way

-- window resizng

vim.api.nvim_set_keymap('n', '<Leader>w+', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w-', ':resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w<', ':vertical resize -5<CR>', { noremap = true, silent = true })

-- auto save buf leave | win leave

vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*",
    command = "silent! update"
})

vim.api.nvim_create_autocmd("WinLeave", {
    pattern = "*",
    command = "silent! update"
})

-- nvim tree keymaps

map('n','<leader>n',':NvimTreeToggle<CR>')


