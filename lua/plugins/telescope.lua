local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {"nvim-lua/plenary.nvim"},

    config = function()
      map("n", "<C-f>", "<cmd>Telescope git_files<CR>", opts)
      map("n", "<C-F>", "<cmd>Telescope find_files<CR>", opts)
      map("n", "<C-b>", "<cmd>Telescope buffers<CR>", opts)
      map("n", "<leader>a", "<cmd>Telescope live_grep<CR>", opts)
    end
  }
}
