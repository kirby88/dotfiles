local km = vim.keymap

vim.g.mapleader = " "

-- General mapping 
-- On iTerm 2, Tab is mapped to ESC (hex code 0x1B)
-- On macOS X, capslock is mapped to CTRL
km.set("n","<leader>nh",":nohl<CR>") -- Clear search highlights
km.set("n","<leader>q",":qa<CR>") -- Quit all buffers

-- Buffer
km.set("n","<leader>0",":buffers<CR>")
km.set("n","<leader>1",":b1<CR>")
km.set("n","<leader>2",":b2<CR>")
km.set("n","<leader>3",":b3<CR>")
km.set("n","<leader>4",":b4<CR>")
km.set("n","<leader>5",":b5<CR>")
km.set("n","<leader>6",":b6<CR>")
km.set("n","<leader>7",":b7<CR>")
km.set("n","<leader>8",":b8<CR>")
km.set("n","<leader>9",":b9<CR>")

-- Shortcut to windows
km.set("n","<leader>t",":FZF ~/Developer/<CR>")
km.set("n","<leader>w","<c-w>")

-- Resize windows
km.set("n","<leader>+",":wincmd _<CR>:wincmd |<CR>")
km.set("n","<leader>=",":wincmd =<CR>")

-- netrw mappings
km.set("n", "<leader>f",":Lexplore<CR>")
--km.set("n", "<leader>f",":NvimTreeToggle<CR>")

vim.opt.runtimepath:append(",/opt/homebrew/opt/fzf")
