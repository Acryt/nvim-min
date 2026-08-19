vim.pack.add({
    'https://github.com/saghen/blink.cmp',
})

require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },

    keymap = {
        preset = 'default',
        -- Очищаем дефолты, которые ты переопределяешь ниже
        ['<C-space>'] = {},
        ['<C-p>'] = {},
        ['<Tab>'] = {},
        ['<S-Tab>'] = {},

        -- Твои кастомные маппинги
        ['<C-y>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-n>'] = { 'select_and_accept' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-b>'] = { 'scroll_documentation_down', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_up', 'fallback' },

        -- Навигация по точкам остановки внутри сниппета (вместо LuaSnip!)
        ['<C-l>'] = { 'snippet_forward', 'fallback' },
        ['<C-h>'] = { 'snippet_backward', 'fallback' },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'normal',
    },

    completion = {
        ghost_text = {
            enabled = true,
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 300,
        }
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'codeium' },
        providers = {
            lsp = {
                enabled = function()
                    local bufname = vim.api.nvim_buf_get_name(0)
                    -- Включаем LSP только для сохранённых файлов
                    return bufname ~= '' and vim.fn.filereadable(bufname)
                end,
            },
            codeium = {
                name = 'Codeium',
                module = 'codeium.blink',
                async = true,
                enabled = function()
                    local bufname = vim.api.nvim_buf_get_name(0)
                    -- Включаем Codeium только для сохранённых файлов
                    return bufname ~= '' and vim.fn.filereadable(bufname)
                end,
            },
        },
    },
})

