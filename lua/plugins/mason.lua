return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
      ensure_installed = {
        'bashls', -- bash
        'lua_ls', -- lua
        'pyright', -- python
        'rust_analyzer', -- rust
        'clangd', -- c/c++
        'vtsls', -- js/ts maybe
        'jdtls', -- for java
        'gopls', -- golang
      },
  },
  dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      { "neovim/nvim-lspconfig" },
  },
}
