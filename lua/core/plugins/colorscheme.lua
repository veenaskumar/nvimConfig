-- Lua initialization file
-- vim.cmd [[colorscheme github_dark]]
-- vim.cmd [[colorscheme sonokai]]
-- vim.cmd [[colorscheme nightfly]]
-- vim.cmd [[colorscheme nordern]]
vim.cmd [[colorscheme tokyonight-moon]]
-- vim.cmd [[colorscheme gruvbox-baby]]
-- vim.cmd [[colorscheme github-colors]]
-- vim.cmd [[colorscheme neon]]
-- vim.cmd [[colorscheme bluloco]]
-- vim.cmd('colorscheme bluloco')
-- vim.cmd [[colorscheme night-owl]]
-- vim.cmd [[colorscheme everforest]]
-- vim.cmd [[colorscheme solarized-osaka]]

require("tokyonight").setup({
  -- use the night style
  style = "moon",
  transparant = false,
  terminal_colors = true,
  -- disable italic for functions
  styles = {
    functions = { italic = true },
    keywords = { italic = true },
    comments = { italic = true },
    sidebars = "dark"
  },
  lualine_bold = true,
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
