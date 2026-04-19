return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        install_dir = vim.fn.stdpath('data') .. '/site',
    },
    config = function()
        require'nvim-treesitter'.install{
            "c", "cpp", "python", "java", "html", "css", "javascript", "lua", "vim", "vimdoc", "query", "markdown"
        }
        vim.api.nvim_create_autocmd('FileType', {
        pattern = {
            "c", "cpp", "python", "java", "html", "css", "javascript", "lua", "vim", "vimdoc", "query", "markdown"
        },
        callback = function()
            vim.treesitter.start()
        end,
    })
    end,
}

