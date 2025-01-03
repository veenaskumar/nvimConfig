require("nvim-treesitter.configs").setup({
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr", -- Set keybinding for renaming
      },
    },
  },
})
