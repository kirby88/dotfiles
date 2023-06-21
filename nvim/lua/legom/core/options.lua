local opt = vim.opt -- for conciseness

opt.showmatch = true -- Highlight matching brace
opt.ttyfast = true -- Boost speed by altering character redraw rates to your terminal
opt.encoding = "utf8" -- Set text encoding as utf8 
opt.scrolloff = 8 -- Scroll offset from top and bottom
opt.showcmd = true
opt.iskeyword:append("-") -- The character - is considering as part of a word
opt.showmode = false -- When typing insert no need to display --INSERT--

-- Line numbers
opt.relativenumber = true -- Show current line number
opt.number = true -- Show relative numbers for other line

-- Visual line and columns
opt.colorcolumn = "120" -- Set the column 120 in red
opt.cursorline = true -- Enable highlighting of the current line
opt.cursorcolumn = true -- Enable highlighting of the current column

-- Search
opt.hlsearch = true -- When searching (/), highlights matches as you go
opt.incsearch = true -- When searching (/), display results as you type (instead of only upon ENTER)
opt.smartcase = true -- When searching (/), automatically switch to a case-sensitive search if you use any capital letters
opt.ignorecase = true -- ignore case when searching. :set noignore to disable

-- Swap files
opt.directory = "/tmp/.swapfiles/" -- Automatically created if it doesn't exists
opt.swapfile = true -- create swap file in directory

-- List of chars and line wraps
opt.listchars = "tab:▶ ,trail:·,extends:>,precedes:<,nbsp:%,eol:¶" -- Set some nice character listings, then activate list
opt.list = true -- Show all list chars
opt.showbreak = "↳" -- Character that shows a line break
opt.breakindent = false -- If a line is broken, it will keep the indentation jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj
opt.wrap = true -- Wrap the line if too long

-- Title
opt.title = true
opt.titlestring = "✏️ %t%r%m"

-- Tabs and indentation
opt.tabstop = 4 -- Use 4 spaces instead of tab
opt.shiftwidth = 4 -- when indenting with '>', use 4 spaces width
opt.softtabstop = 4 -- Tab look like they are 4 spaces
opt.expandtab = true -- On pressing tab insert 4 spaces
opt.autoindent = true
opt.smartindent = true

-- Tabs
opt.splitbelow = true --  When opening a pane vertically, opening it below
opt.splitright = true -- When opening a pane horizontally, opening it on the right

-- Undo
opt.undodir = "/tmp/.undo/"
opt.undofile = true -- Undo is stored in a file so it can be restored after closing vim

-- Appearance
opt.termguicolors = true
opt.background = "dark" -- Dark theme
opt.signcolumn = "yes" -- This is to add a column for sign, things like a debugger that needs to display additional info to the user

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use the system clipboard when copying

-- Netrw
vim.g.netrw_winsize = 25 -- 25% of the window
vim.g.netrw_liststyle = 3 -- Display as a tree
vim.g.netrw_browse_split = 4 -- Use the previous window to open a file
vim.g.netrw_keepdir = 0 -- Keeps the directory where you accessed previously
vim.g.netrw_localcopydircmd = "cp -r" -- Copy recusrively directories
