local nnoremap = require("xyassini.keymap").nnoremap

nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>d", "yyp")
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<C-b>", "<cmd>lua require('telescope.builtin').buffers()<CR>")

nnoremap("+", "<C-w>l")
nnoremap("ü", "<C-w>h")
nnoremap("ä", "<C-w>j")
nnoremap("ß", "<C-w>k")

nnoremap("<leader>g", "<cmd>LazyGit<CR>")

nnoremap("<leader>sv", "<cmd>luafile $MYVIMRC<CR>")

-- nnoremap("ö", "gg=G``")
nnoremap("ö", "gg=G<C-o>")
