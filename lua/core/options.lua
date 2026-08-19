local opts = {
    number = true,
    relativenumber = true,
    -- encoding = 'utf-8',
    fileencoding = 'utf-8',
    clipboard = 'unnamedplus',
    autoindent = true,
    smartindent = true,
    winborder = 'rounded',
    expandtab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    wrap = false,
    linebreak = false,
    mouse = 'a',
    numberwidth = 2,

    hidden = true,
    scrolloff = 4,
    termguicolors = true,
    signcolumn = 'yes',
}

for key, value in pairs(opts) do
    vim.opt[key] = value
end
