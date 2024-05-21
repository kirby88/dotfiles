local km = vim.keymap

vim.g.mapleader = " "

-- General mapping 
-- On macOS X, capslock is mapped to ESC
km.set("n","<leader>nh",":nohl<CR>") -- Clear search highlights
km.set("n","<leader>q",":qa<CR>") -- Quit all buffers
km.set("n","<leader>s",":w<CR>") -- Quit all buffers

-- Tabs
km.set("n","<leader>t",":tabnew<CR>")
km.set("n","<leader>w",":tabclose<CR>")
km.set("n","<leader>1","1gt<CR>")
km.set("n","<leader>2","2gt<CR>")
km.set("n","<leader>3","3gt<CR>")
km.set("n","<leader>4","4gt<CR>")
km.set("n","<leader>5","5gt<CR>")
km.set("n","<leader>6","6gt<CR>")
km.set("n","<leader>7","7gt<CR>")
km.set("n","<leader>8","8gt<CR>")
km.set("n","<leader>9","9gt<CR>")

-- Resize windows
km.set("n","<leader>+",":wincmd _<CR>:wincmd |<CR>")
km.set("n","<leader>=",":wincmd =<CR>")


-- Others
km.set("n", "<leader>p",":pu<CR>") -- Past above

