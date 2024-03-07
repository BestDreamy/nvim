-- Mason control LSP(language Server Protocol)
return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                "hdl_checker"
            },
        })
    end,
}
