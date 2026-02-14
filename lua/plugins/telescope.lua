return {
    {
        "nvim-telescope/telescope.nvim", version = "*",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            border = false,
        },
        keys = {
            {'<leader>bb', '<cmd>Telescope buffers<cr>', desc = 'Manage buffers' },
            {'<leader>bf', '<cmd>Telescope find_files<cr>', desc = 'Find files'}
        }
    }
}
