syntax on

set expandtab
set hidden
set noautoindent
set nojoinspaces
set nowrap
set ruler
set showcmd
set sw=2
set ts=2
set wim=list:longest

" http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set nobackup
set noswapfile
set nowritebackup

" Easy most-recent-buffer switching
nnoremap <Tab> :b#<CR>

" http://neovim.io/doc/user/nvim_terminal_emulator.html
tnoremap <Esc> <C-\><C-n>

" Split words at periods, even in bash
set isk-=.
let g:sh_noisk=1

" I kinda like these space markings
set list
