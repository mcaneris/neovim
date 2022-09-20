local ok, plugin = pcall(require, 'null-ls')

if ok then
  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  plugin.setup({
    sources = {
      plugin.builtins.formatting.prettierd
    },
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            -- on 0.8, you should use
            -- vim.lsp.buf.format({ bufnr = bufnr })
            -- instead
            vim.lsp.buf.formatting()
          end,
        })
      end
    end
  })
end
