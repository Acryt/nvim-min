local prettier = {
  formatCommand = "prettier --stdin-filepath ${INPUT}",
  formatStdin = true,
}

vim.lsp.config("efm", {
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = { ".git/", "package.json" },
    languages = {
      -- Перечисляем все языки, которые должен форматировать Prettier
      javascript = { prettier },
      typescript = { prettier },
      javascriptreact = { prettier },
      typescriptreact = { prettier },
      html = { prettier },
      css = { prettier },
      json = { prettier },
      markdown = { prettier },
    },
  },
})

vim.lsp.enable("efm")
