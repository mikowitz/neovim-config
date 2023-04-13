local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
  {
    "ThePrimeagen/harpoon",

    dependencies = {"nvim-lua/plenary.nvim"},

    config = function()

      require("telescope").load_extension("harpoon")

      map("n", "<leader>h", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
      map("n", "<leader><leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
      map("n", "<leader>t", "<cmd>Telescope harpoon marks<CR>", opts)
    end
  }
}
