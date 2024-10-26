local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "html", "cssls", "clangd", "java_language_server", "ts_ls", "luaformatter", "prettier" },
})
require("lspconfig").lua_ls.setup({})
require("lspconfig").html.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").java_language_server.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").luaformatter.setup({})
-- require("lspconfig").tailwindcss.setup({})
lspconfig.ts_ls.setup({
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  on_attach = function(client)
    -- Disable tsserver's built-in formatter if you're using prettier
    client.server_capabilities.documentFormattingProvider = false
  end,
})
