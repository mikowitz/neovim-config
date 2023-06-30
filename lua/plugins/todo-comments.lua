return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      require("todo-comments").setup()

      map("n", "<leader><leader>t", "<cmd>TodoTelescope<CR>", opts)
    end,

    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },

  }
}
