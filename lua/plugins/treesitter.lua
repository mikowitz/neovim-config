return {
  {
    "nvim-treesitter/nvim-treesitter",

    dependencies = { "nvim-treesitter/playground", "p00f/nvim-ts-rainbow" },

    config = function()
      require("nvim-treesitter.configs").setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true
        },
        ensure_installed = {
          "elixir", "erlang", "eex", "heex",
          "ruby", "css", "html",
          "javascript", "tsx",
          "lua", "vim", "bash",
          "markdown"
        },
        rainbow = {enable = true},
        autotag = {
          enable = true,
          filetypes = { "html", "eelixir", "tsx" }
        }
      }
    end
  }
}
