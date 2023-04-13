vim.g.neoformat_only_msg_on_error = true

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
