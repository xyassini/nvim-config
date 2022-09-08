local nnoremap = require("xyassini.keymap").nnoremap

-- Toggle file tree
nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Duplicate current line
nnoremap("<leader>d", "yyp")

-- Fuzzy find files
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>")
-- Greo in all files
nnoremap("<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
-- Show all recent buffers
nnoremap("<C-b>", "<cmd>lua require('telescope.builtin').buffers()<CR>")

-- Move through panes in light speed (at least on a German keyboard)
nnoremap("+", "<C-w>l")
nnoremap("ü", "<C-w>h")
nnoremap("ä", "<C-w>j")
nnoremap("ß", "<C-w>k")

-- Split panes in light speed too, by prepending Ctrl to above commands
nnoremap("<C-+>", "<cmd>:vs<CR><C-w>l<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<C-ä>", "<cmd>:sp<CR><C-w>j<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<C-ü>", "<cmd>:vs<CR><cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<C-ß>", "<cmd>:sp<CR><cmd>lua require('telescope.builtin').find_files()<CR>")

-- Open LazyGit
nnoremap("<leader>g", "<cmd>LazyGit<CR>")

-- Reload vim config
nnoremap("<leader>sv", "<cmd>luafile $MYVIMRC<CR>")

-- nnoremap("ö", "gg=G``")
nnoremap("ö", "gg=G<C-o>")
