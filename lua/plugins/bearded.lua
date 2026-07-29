vim.pack.add({
    'http://github.com/ferouk/bearded-nvim',
})

require("bearded").setup({
    flavor = "vivid-purple",

    on_highlights = function(set, palette, opts)
        set("Comment", { fg = "#776688", italic = true })
        set("@comment", { fg = "#776688", italic = true })

        set("DiffAdd",    { bg = "#002211" })
        set("DiffDelete", { bg = "#220011" })
        set("DiffChange", { bg = "#110022" })
    end,
})
