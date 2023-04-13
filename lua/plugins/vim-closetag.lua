return {
  {
    "alvan/vim-closetag",

    config = function()
      vim.cmd [[
        let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.eex,*.leex,*.jsx'
        let g:closetag_filetypes = 'html,xhtml,phtml,eelixir,jsx'
      ]]
    end
  }
}
