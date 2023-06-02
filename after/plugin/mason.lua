local status, mason = pcall(require, "mason")
if (not status) then
  return
end

mason.setup()

local lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not lspconfig_status) then
  return
end

mason_lspconfig.setup({
  automatic_installation = true
})


local null_ls_status, mason_null_ls = pcall(require, "mason_null_ls")

if (not null_ls_status) then
  return
end

mason_null_ls.setup({
  automatic_installation = true
})
