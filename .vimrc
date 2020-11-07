" Kirby88 .vimrc

" When a .vimrc is found, this option automatically set
" but if shared, then compatible mode is on.
" Compatible means compatible with vi and disable new features
set nocompatible

" call pathogen#infect() " Used for NERDTree
syntax on
filetype plugin indent on " Enable filetype, plugin and indentatio at once.

" Editor configuration
set number " Show current line number
set relativenumber " Show relative numbers for other line
set colorcolumn=120 " Set the column 120 in red
set nowrap " Lines extend without being wrapped
set cursorline " Enable highlighting of the current line
set showmatch	" Highlight matching brace
set ai " Sets auto-indentation
set si " Sets smart-indentation
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set ttyfast " Boost speed by altering character redraw rates to your terminal
set encoding=utf8 " Set text encoding as utf8

" Remap arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Theme and Styling
set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

" Status line
let g:currentmode={
      \ 'n'  : 'N ',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'V ',
      \ 'V'  : 'V·Line ',
      \ 'x22' : 'V·Block ',
      \ 's'  : 'Select ',
      \ 'S'  : 'S·Line ',
      \ 'x19' : 'S·Block ',
      \ 'i'  : 'I ',
      \ 'R'  : 'R ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'Terminal '
      \}

set laststatus=2 " Show the status at the bottom (filename). 2 means always show it
set statusline=
set statusline+=%0*\ [%n]
set statusline+=%0*\ %<%.30F%m%r%h%w\  " File path up to 30 chars, modified, readonly, helpfile, preview
set statusline+=%0*\ [%{''.(&fenc!=''?&fenc:&enc).''}]
set statusline+=%0*\ st_mtim
set statusline+=%0*\ %{strftime('%b\ %d,\ %Y\ -\ %H:%M:%S',getftime(expand('%')))}
set statusline+=,
set statusline+=%0*\ st_size
set statusline+=%0*\ %{getfsize(expand('%'))}\ bytes
set statusline+=%=
set statusline+=%0*\ Line:\ %l/%L\ (%p%%)\ -\ Column:\ %c
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=red ctermbg=black
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=white ctermbg=black
hi statusline guifg=black guibg=#8fbfdc ctermfg=white ctermbg=black

" enable setting title
set title
" configure title to look like: Vim /path/to/file
set titlestring=\ %-25.55F\ %a%r%m

" NERDTree
" let NERDTreeMirror=1 " Mirror on every tabs
" silent! nmap <C-p> :NERDTreeToggle<CR> " ctrl+p tot toggle
" Close NERDtree when quiting vim
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeMinimalUI = 1
" let NERDTreeShowBookmarks=1
