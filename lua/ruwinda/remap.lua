local default_opts = { noremap = true, silent = true }
vim.g.mapleader = " " 

vim.keymap.set("n","<leader>pv",vim.cmd.Ex)  -- Explore mode
vim.keymap.set("n","<C-v>",'"+p') -- clipboard paste
vim.keymap.set("n","<C-y>", '"+Y') -- clipboard yank
vim.keymap.set("i","jk","<ESC>")
vim.keymap.set("n","<leader>w",vim.cmd.w)
vim.keymap.set("n","<leader>fq",":q!<cr>") 


-- navigate buffers
vim.keymap.set("n", "<tab>", ":bnext<cr>") -- Next Tab 
vim.keymap.set("n", "<s-tab>", ":bprevious<cr>") -- Previous tab
vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>") -- No highlight search
vim.keymap.set("n", "<leader>q", ":bd<cr>") -- No highlight search


-- navigate in insert
vim.api.nvim_set_keymap("i","<C-l>","<Right>",default_opts)
vim.api.nvim_set_keymap("i","<C-h>","<Left>",default_opts)

