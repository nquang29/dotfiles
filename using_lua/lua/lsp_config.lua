local nvim_lsp = require('lspconfig')
--nvim_lsp.gopls.setup {}
local servers = {
  "gopls",
  "pyright",
  "tsserver",
}

for _, server in pairs(servers) do
  nvim_lsp[server].setup{}
end
