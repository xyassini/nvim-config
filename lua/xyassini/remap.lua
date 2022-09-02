local nnoremap = require("xyassini.keymap").nnoremap

nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>d", "yyp")
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<C-f>", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

nnoremap("<C-i>", "gg=G``")
