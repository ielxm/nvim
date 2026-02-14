return {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    init = function()
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true})
    end,

    opts = {
        tab = {
            sync = {
                open = true,
                close = true,
            }
        }
    },
}
