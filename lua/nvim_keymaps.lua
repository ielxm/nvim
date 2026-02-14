-- Включить/выключить числовой ряд
vim.keymap.set("n", "<C-n>", ":lua vim.o.number = not vim.o.number <CR>", {silent = true, noremap = true})

-- Писательские сочетания клавиш
vim.keymap.set("i", "<C-->", "—")
vim.keymap.set("i", "<C-2>", "«» <Left><Left>")
vim.keymap.set("i", "<C-3>", '<span class="custom-time-tag"></span> <Left><Left><Left><Left><Left><Left><Left><Left>')

-- Открыть диагностическое меню
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd> lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
