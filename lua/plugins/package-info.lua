local status, package_info = pcall(require, "package-info")
if (not status) then
  return
end

package_info.setup({
  package_manager = "npm",
})
