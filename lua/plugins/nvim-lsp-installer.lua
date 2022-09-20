local ok, nvim_lsp_installer = pcall(require, "nvim-lsp-installer")

if ok then
  nvim_lsp_installer.setup({
    -- automatically detect which servers to install
    -- (based on which servers are set up via lspconfig)
    automatic_installation = true,

    ui = {
      check_outdated_servers_on_open = true,
      icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
      }
    }
  })
end
