return {
  {
    "folke/noice.nvim",

    dependencies = { "MunifTanjim/nui.nvim" },

    config = function()
      require "noice".setup({ messages = { enabled = false } })
    end
  }
}
