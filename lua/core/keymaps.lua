local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- window
vim.opt.clipboard = "unnamedplus"
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- move entire line above
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- splitting nvim keymap
map("n", "<leader>v", ":vertical split<CR>")
--clear search which highligth
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
map("n", "<leader>c", ":nohl<CR>")

-- Reload configuration without restart nvim
map("n", "<leader>r", ":so %<CR>")

-- Fast saving with <leader> and s
map("n", "<leader>s", ":w<CR>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>q", ":q!<CR>")

-- terminal commands
vim.api.nvim_set_keymap("n", "<leader>th", ":belowright split | terminal<CR>", { noremap = true, silent = true }) --open the terminal in belowright in horzontal way

-- window resizng

vim.api.nvim_set_keymap("n", "<Leader>w+", ":resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>w-", ":resize -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>w>", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>w<", ":vertical resize -5<CR>", { noremap = true, silent = true })

-- auto save buf leave | win leave

vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  command = "silent! update",
})

vim.api.nvim_create_autocmd("WinLeave", {
  pattern = "*",
  command = "silent! update",
})

-- nvim tree keymaps

map("n", "<leader>n", ":NvimTreeToggle<CR>")

map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>")
map("n", "<leader>g", ":Git<CR>")
map("n", "<C-i>", ":BufferLineCycleNext<CR>")

---flash keymap
local flash = require("flash")
vim.keymap.set("n", "s", function()
  flash.jump()
end, { noremap = true, silent = true, desc = "Flash Jump" })

vim.keymap.set("n", "S", function()
  flash.treesitter()
end, { desc = "Flash Treesitter" })
vim.keymap.set("o", "r", function()
  flash.remote()
end, { desc = "Remote Flash" })
vim.keymap.set({ "n", "x", "o" }, "R", function()
  flash.treesitter_search()
end, { desc = "Treesitter Search" })
vim.keymap.set("c", "<c-s>", function()
  flash.toggle()
end, { desc = "Toggle Flash Search" })

-- keymappings for comments

vim.keymap.set("n", "<Leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<Leader>/", "gb", { remap = true })





-- create a custom keybinding to run a custom script
vim.keymap.set("n", "<leader>cm", function()
    local wholeDate = os.date("*t")
    local date = wholeDate.day
    local month_name = os.date("%B")
    local year = wholeDate.year
    local getFilename = vim.fn.expand("%:e")
    print(type(month_name))
    if getFilename == "md" then
      vim.api.nvim_buf_set_lines(0, 0, 0, true, {
        "## " .. date .. "-" .. month_name .. "-" .. year,
        "#### :memo: <font color='white '>Welcome to Markdown Notes</font>"
      })
    end
  end,
  { noremap = true, silent = true })
