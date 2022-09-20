local ok, plugin = pcall(require, 'mason-lspconfig')

if ok then
  plugin.setup()
end
