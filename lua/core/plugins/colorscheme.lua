-- Lua initialization file
-- vim.cmd [[colorscheme github_dark]]
-- vim.cmd [[colorscheme sonokai]]
-- vim.cmd [[colorscheme nightfly]]
-- vim.cmd [[colorscheme nordern]]
vim.cmd [[colorscheme tokyonight-moon]]
-- vim.cmd [[colorscheme cyberdream]]
-- vim.cmd [[colorscheme gruvbox-baby]]
-- vim.cmd [[colorscheme github-colors]]
-- vim.cmd [[colorscheme neon]]
-- vim.cmd [[colorscheme bluloco]]
-- vim.cmd('colorscheme bluloco')
-- vim.cmd [[colorscheme night-owl]]
-- vim.cmd [[colorscheme everforest]]
-- vim.cmd [[colorscheme solarized-osaka]]


-- tokyonight custumization for colorscheme
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





--[[

-- cyberdream custumization
require("cyberdream").setup({
  -- Enable transparent background
  transparent = false,

  -- Enable italics comments
  italic_comments = true,

  -- Replace all fillchars with ' ' for the ultimate clean look
  hide_fillchars = false,

  -- Modern borderless telescope theme - also applies to fzf-lua
  borderless_telescope = true,

  -- Set terminal colors used in `:terminal`
  terminal_colors = true,

  -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
  cache = false,

  theme = {
    variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
    saturation = 1,      -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
    highlights = {
      -- Highlight groups to override, adding new groups is also possible
      -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

      -- Example:
      Comment = { fg = "#696969", bg = "NONE", italic = true },

      -- Complete list can be found in `lua/cyberdream/theme.lua`
    },

    -- Override a highlight group entirely using the color palette
    overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
      -- Example:
      return {
        Comment = { fg = colors.green, bg = "NONE", italic = true },
        ["@property"] = { fg = colors.magenta, bold = true },
      }
    end,

    -- Override a color entirely
    colors = {
      -- For a list of colors see `lua/cyberdream/colours.lua`
      -- Example:
      bg = "#000000",
      green = "#00ff00",
      magenta = "#ff00ff",
    },
  },

  -- Disable or enable colorscheme extensions
  extensions = {
    telescope = true,
    notify = true,
    mini = true,
    ...
  },
}) ]]
