require('lspconfig').sumneko_lua.setup({
  settings = {
    Lua = {
      diagnostics = {

        -- Get the language server to recognize
        -- the `vim` global
        globals = {'vim'},
      },
      runtime = {
        -- Tell the language server which version of Lua
        -- you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      }
    }
  }
})
