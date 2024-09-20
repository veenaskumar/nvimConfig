require("core/keymaps")
require("core/basicConfig")
require("core/plugin")
require("core/plugins/colorscheme")
require("core/plugins/lualine")
require("core/plugins/nvimtree")
require("core/plugins/webdevicons")
require("core/plugins/telescope")
require("core/plugins/lsp-config")
require("core/plugins/completions")
require("core/plugins/autopairs")
require("core/plugins/formatter")
require("core/plugins/gitsigns")
require("core/plugins/bufferline")
require("core/plugins/refactor")
require("core/plugins/markdown-nvim")

vim.cmd([[
  autocmd BufNewFile,BufRead *.jsx set filetype=javascriptreact
]])

-- Ensure Neovim recognizes .tsx as typescriptreact
vim.cmd([[
  autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact
]])
