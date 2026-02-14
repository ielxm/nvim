return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  config = function()
    require("nvim-treesitter.config").setup({
        ensure_installed = {
          "c",
          "cpp",
          "python",
          "html",
          "css",
          "javascript",
          "lua",
          "vim",
          "vimdoc",
          "query"
          --"matlab",
        },

        sync_install = false,
        auto_install = true,

        autopairs = {
          enable = true,
        },

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        indent = {
          enable = false,
        },
      })
  end
}
