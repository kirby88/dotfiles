local opt = vim.opt -- for conciseness

vim.api.nvim_command [[let &t_8f = '<Esc>[38;2;%lu;%lu;%lum']]
vim.api.nvim_command [[let &t_8b = '<Esc>[48;2;%lu;%lu;%lum']]
opt.laststatus = 2

-- Colors inspired from https://github.com/itchyny/lightline.vim/blob/11931e2de42cb1a14887a002a874f0b2daf12bc2/autoload/lightline/colorscheme/wombat.vim
vim.api.nvim_command [[hi BaseColor guifg=black guibg=#969696]]
vim.api.nvim_command [[hi PathColor guifg=black guibg=#808080]] -- Grey
vim.api.nvim_command [[hi PercentColor guifg=black guibg=#d0d0d0]] -- Grey
vim.api.nvim_command [[hi NormalColor guifg=black guibg=#8ac6f2]] -- Blue
vim.api.nvim_command [[hi InsertColor guifg=black guibg=#95e454]] -- Green
vim.api.nvim_command [[hi VisualColor guifg=black guibg=#e5786d]] -- Orange
vim.api.nvim_command [[hi ReplaceColor guifg=black guibg=#f2c68a]] -- Red
vim.api.nvim_command [[hi CommandColor guifg=black guibg=#cae682]] -- Yellow
vim.api.nvim_command [[hi LastColor ctermbg=Black ctermfg=Blue cterm=bold]]
vim.api.nvim_command [[hi Error ctermfg=Red guifg=Red]]

vim.api.nvim_command [[set statusline=%#BaseColor#]]
vim.api.nvim_command [[set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}]]
vim.api.nvim_command [[set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}]]
vim.api.nvim_command [[set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}]]
vim.api.nvim_command [[set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}]]
vim.api.nvim_command [[set statusline+=%#CommandColor#%{(mode()=='c')?'\ \ CMD\ ':''}]]
vim.api.nvim_command [[set statusline+=%#PercentColor#]]
vim.api.nvim_command [[set statusline+=\ %p%%\ ]] -- File name up to 30 chars, modified, readonly, helpfile, preview
vim.api.nvim_command [[set statusline+=%#BufferColor#]]
vim.api.nvim_command [[set statusline+=\ [%n]\ ]] -- File name up to 30 chars, modified, readonly, helpfile, preview
vim.api.nvim_command [[set statusline+=%#BaseColor#]]
vim.api.nvim_command [[set statusline+=%#PathColor#]]
vim.api.nvim_command [[set statusline+=\ [%{''.(&fenc!=''?&fenc:&enc).''}]\ %.30t%m%r%h%w\ ]] -- File name up to 30 chars, modified, readonly, helpfile, preview
vim.api.nvim_command [[set statusline+=%=]]
vim.api.nvim_command [[set statusline+=\ [%L\ lines][%{getfsize(expand('%'))}b] ]]
vim.api.nvim_command [[set statusline+=[%{strftime('%d/%m/%y\ %H:%M:%S',getftime(expand('%')))}]\ ]]
vim.api.nvim_command [[set statusline+=\ [ ]]
vim.api.nvim_command [[set statusline+=Hex=0x%02.2B]]
vim.api.nvim_command [[set statusline+=,ASCII=%03.3b]]
vim.api.nvim_command [[set statusline+=] ]]
vim.api.nvim_command [[set statusline+=\ @\ %lx%c\ ]]
