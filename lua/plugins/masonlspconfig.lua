vim.pack.add({
    'https://github.com/mason-org/mason-lspconfig.nvim',
})

require("mason-lspconfig").setup({
    -- Список серверов, которые должны устанавливаться автоматически
    ensure_installed = {
        "lua_ls",
        "zls",
        "vtsls"
    },
    automatic_enable = {
        "lua_ls",
        "zls",
        "vtsls",
    }
})
