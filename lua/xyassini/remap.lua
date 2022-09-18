local nnoremap = require("xyassini.keymap").nnoremap
local xnoremap = require("xyassini.keymap").xnoremap
local nmap = require("xyassini.keymap").nmap

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

-- vim-test mappings
nmap("<leader>t", "<cmd>TestNearest<CR>")
nmap("<leader>T", "<cmd>TestFile<CR>")
nmap("<leader>a", "<cmd>TestSuite<CR>")

-- Other.nvim mappings
nnoremap("<leader>o", "<cmd>Other<CR>")
nnoremap("<leader><Down>", "<cmd>OtherSplit<CR>")
nnoremap("<leader><Right>", "<cmd>OtherVSplit<CR>")
nnoremap("<leader>c", "<cmd>OtherClear<CR>")

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

-- Formatting
nnoremap("<leader>F", "<cmd>Format<CR>")
nnoremap("ö", "<cmd>FormatWrite<CR>")

-- nnoremap("ö", "gg=G``")
nnoremap("<leader>f", "gg=G<C-o>")

-- Substitute keybind
nnoremap("<leader>r", ":%s//g<left><left>")
