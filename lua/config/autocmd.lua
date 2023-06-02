local function open_nvim_tree(data)
  local tree_status, tree_api = pcall(require, "nvim-tree.api")
  if (not tree_status) then
    print("Error: Could not load nvim-tree api")
    return
  end

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  tree_api.tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
