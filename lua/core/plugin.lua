local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use('bluz71/vim-nightfly-colors')
  use("rafamadriz/neon")
  use("lourenci/github-colors")
  use("uloco/bluloco.nvim")
  use('fcancelinha/nordern.nvim')
  use("projekt0n/github-nvim-theme")
  use("luisiacc/gruvbox-baby")
  use("craftzdog/solarized-osaka.nvim")
  use("oxfist/night-owl.nvim")
  use("folke/tokyonight.nvim")
  use("sainnhe/sonokai")
  use("sainnhe/everforest")
  use { "scottmckendry/cyberdream.nvim" }
  use("MeanderingProgrammer/render-markdown.nvim")
  use("nvim-treesitter/nvim-treesitter")
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })
  --[[  use({
    "mgierada/lazydocker.nvim",
    requires = { "akinsho/toggleterm.nvim" },
  }) ]]

  --[[   use({
    "crnvl96/lazydocker.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
    },
  }) ]]
  use("nvimdev/indentmini.nvim")
  use("luckasRanarison/tailwind-tools.nvim")
  use("kylechui/nvim-surround")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
  use("alexghergh/nvim-tmux-navigation")
  use("nvim-lua/plenary.nvim")
  use("numToStr/Comment.nvim")
  use("folke/flash.nvim")
  use("hrsh7th/nvim-cmp")
  use("windwp/nvim-ts-autotag")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("abecodes/tabout.nvim")
  use("rafamadriz/friendly-snippets")
  use("nvim-lua/plenary.nvim") -- don't forget to add this one if you don't have it yet!
  use("leath-dub/snipe.nvim")  -- don't forget to add this one if you don't have it yet!
  -- use({
  -- 	"ThePrimeagen/harpoon",
  -- 	requires = { { "nvim-lua/plenary.nvim" } },
  -- })
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })
  use("nvim-treesitter/nvim-treesitter-refactor")
  use("stevearc/conform.nvim")
  use("windwp/nvim-autopairs")
  use("tpope/vim-fugitive")
  use("lewis6991/gitsigns.nvim")
  use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = {
        "markdown" }
    end,
    ft = { "markdown" },
  })
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
