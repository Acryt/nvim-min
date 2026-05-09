local function set_options(opts)
    for key, value in pairs(opts) do
        vim.opt[key] = value
    end
end

set_options({
    -- Номера строк, курсор
    number = true,
    relativenumber = true,
    -- cursorline = true,
    -- Кодировка
    encoding = 'utf-8',
    -- fileencoding = 'utf-8'
    -- Копирование вставка
    clipboard = 'unnamedplus',
    -- Базовые настройки отступов
    autoindent = true,  -- Копирует отступ с предыдущей строки
    smartindent = true, -- "Умные" отступы
    winborder = "rounded",
    -- Использование пробелов вместо табов
    expandtab = true,   -- Преобразует Tab в пробелы
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    -- Перенос строк
    wrap = false,
    linebreak = false,
})

-- print("Options loaded")
