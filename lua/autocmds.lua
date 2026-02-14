-- Автоматическое обновление диагностического меню (lsp/cmp) 
vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({
            open = false
        })
    end,
})

-- Фикс проблемы с изменением курсора в некоторых терминалах после использования (Neo)vim
vim.api.nvim_create_autocmd("ExitPre", {
    group = vim.api.nvim_create_augroup("Exit", { clear = true }),
    command = "set guicursor=a:ver90"
})
