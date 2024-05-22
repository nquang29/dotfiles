lvim.lang.go.formatters = {
    {
        exe = "goimports",
    },
}

lvim.lang.go.linters = {
    {
        exe = "golangci_lint",
    },
}

lvim.lang.go.lsp.setup = {
    cmd = {"gopls"},
}
    
lvim.builtin.which_key.mappings["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go To Definition" }
