return {
  {
    "levouh/tint.nvim",

    config = function()
      require"tint".setup {
        bg = false,
        tint = -50,
      }
    end
  }
}
