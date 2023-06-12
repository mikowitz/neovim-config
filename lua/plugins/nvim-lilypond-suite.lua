return {
  {
    "martineausimon/nvim-lilypond-suite",

    dependencies = {
      "MunifTanjim/nui.nvim"
    },

    config = function()
      require"nvls".setup({
      })
    end
  }
}
