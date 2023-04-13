local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
  {
    "troydm/zoomwintab.vim",

    config = function()
      map("n", "<leader>z", "<cmd>ZoomWinTabToggle<CR>", opts)
    end
  }

}
