return {
  {
    "neovim/nvim-lspconfig",

    dependencies = {"williamboman/nvim-lsp-installer"},

    config = function()
      require("lsp_handlers").setup()
      local on_attach = require("lsp_handlers").on_attach
      local capabilities = require("lsp_handlers").capabilities
      local lspc = require("lspconfig")
      local installer = require("nvim-lsp-installer")

      installer.on_server_ready(function(server)
        local opts = {
          on_attach = on_attach,
          capabilities = capabilities
        }

        if server.name == "elixirls" then
          local elixir_opts = {
            settings = {
              elixir = {
                diagnostics = {
                  globals = { "vim" }
                }
              }
            }
          }
          opts = vim.tbl_deep_extend("force", elixir_opts, opts)
        end

        server:setup(opts)
      end)
    end
  }
}



