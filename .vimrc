" Kirby88 .vimrc

" When a .vimrc is found, this option automatically set
" but if shared, then compatible mode is on.
" Compatible means compatible with vi and disable new features
set nocompatible

syntax on
filetype plugin indent on " Enable filetype, plugin and indentatio at once.

" Editor configuration
set number " Show current line number
set relativenumber " Show relative numbers for other line
set colorcolumn=80 " Set the column 120 in red
set nowrap " Lines extend without being wrapped
set cursorline " Enable highlighting of the current line
set cursorcolumn " Enable highlighting of the current line
set showmatch " Highlight matching brace
set ai " Sets auto-indentation
set si " Sets smart-indentation
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set shortmess-=S " Zhen searchinf (/) show nb of results for the search
set ttyfast " Boost speed by altering character redraw rates to your terminal
set encoding=utf8 " Set text encoding as utf8
" set listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:%,eol:¶,space:· " Set some nice character listings, then activate list
" set list
set title " enable setting title
set titlestring=\ %-25.55F\ %a%r%m " configure title to look like: Vim /path/to/file
set ignorecase " ignore case when searching. :set noignore to disable

" Remap arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Theme and Styling
set t_Co=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=light
colorscheme onehalflight

" Status line
set laststatus=2 " Show the status at the bottom (filename). 2 means always show it
set statusline=%#BaseColor#
set statusline+=\ [%n]\ |
set statusline+=%#NormalColor#%{(mode()=='n')?'\ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ VISUAL\ ':''}
set statusline+=%#BaseColor#
set statusline+=\ %<%.50F%m%r%h%w
set statusline+=\ [%{''.(&fenc!=''?&fenc:&enc).''}]\ |
set statusline+=-\ %{getfsize(expand('%'))}\ bytes " File name up to 30 chars, modified, readonly, helpfile, preview
"set statusline+=\ %{strftime('%b\ %d,\ %Y\ -\ %H:%M:%S',getftime(expand('%')))}\ | " Last modification time
set statusline+=%=
set statusline+=\ Line:\ %l/%L\ (%p%%)\ -\ Column:\ %c\ |

hi NormalColor guifg=Black guibg=#8fbfdc ctermbg=DarkBlue ctermfg=White
hi BaseColor guifg=Black guibg=#8fbfdc ctermbg=DarkGrey ctermfg=White
hi InsertColor guifg=Black guibg=#d7afff ctermbg=Red ctermfg=White
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=Yellow ctermfg=0
hi VisualColor guifg=Black guibg=Orange ctermbg=DarkGreen ctermfg=0

