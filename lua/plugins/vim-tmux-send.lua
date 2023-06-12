local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
  {
    "slarwise/vim-tmux-send",

    config = function()
      map("n", "<leader>sm", ":SendMakeCmd<CR>", opts)
    end
  }
}
