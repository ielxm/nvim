return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c", "cpp", "rust", "go", "python", "lua", "bash", "vim", "vimdoc", "query"
            },
            auto_install = false,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            folds = {
                enable = true
            },
            indent = {
                enable = false
            }
        })
    end,
    callback = function()
        vim.treesitter.start()
    end,
}
