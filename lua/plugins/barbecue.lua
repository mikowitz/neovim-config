return {
  {
    "utilyre/barbecue.nvim",
    version = "*",

    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons"
    },

    config = function()
      require "barbecue".setup({
        show_modified = true,

        symbols = {
          ---Modification indicator.
          ---
          ---@type string
          modified = "●",

          ---Truncation indicator.
          ---
          ---@type string
          ellipsis = "…",

          ---Entry separator.
          ---
          ---@type string
          separator = "",
        },

        kinds = {
          Text = "󰉿",
          Method = "m",
          Function = "󰊕",
          Constructor = "",
          Field = "",
          Variable = "󰆧",
          Class = "󰌗",
          Interface = "",
          Module = "",
          Property = "",
          Unit = "",
          Value = "󰎠",
          Enum = "",
          Keyword = "",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰇽",
          Struct = "",
          Event = "",
          Operator = "󰆕",
          TypeParameter = "󰊄",
        }
      })
    end
  }
}
