local function make_transparent(group)
    local hl = vim.api.nvim_get_hl(0, { name = group })
    vim.api.nvim_set_hl(0, group, {
        fg = hl.fg,
        bg = "NONE",
        sp = hl.sp,
        bold = hl.bold,
        italic = hl.italic,
        underline = hl.underline,
        undercurl = hl.undercurl,
    })
end

make_transparent("Normal")
make_transparent("NormalNC")
make_transparent("NeoTreeNormal")
make_transparent("NeoTreeNormalNC")
make_transparent("FloatBorder")
-- make_transparent("LineNr")
