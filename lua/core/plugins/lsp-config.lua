require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls","html","cssls","clangd","jdtls","tsserver"}
})

require'lspconfig'.lua_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.cssls.setup{}


