vim.pack.add({
    'https://github.com/catppuccin/nvim',
})
require("catppuccin").setup({
    flavour = "mocha",
    background = {
        light = "latte",
        dark = "mocha",
    },
})
vim.cmd.colorscheme "catppuccin-nvim"
