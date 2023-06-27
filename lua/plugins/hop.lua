local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

return {
  {
    "phaazon/hop.nvim",

    config = function()
      require("hop").setup {
        keys = "aoeuhtns"
      }

      map("n", "<leader>w", ":HopWordMW<CR>", opts)
      map("n", "<leader>l", ":HopLineStartMW<CR>", opts)
    end
  }
}
