call plug#begin('~/.config/nvim/plugged')

Plug 'derekwyatt/vim-scala'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

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
set wim=list:longest,full
set nohlsearch

" http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set nobackup
set noswapfile
set nowritebackup

" Easy most-recent-buffer switching
nnoremap <Tab> :b#<CR>

" http://neovim.io/doc/user/nvim_terminal_emulator.html
tnoremap <Esc> <C-\><C-n>

" Split words at periods in bash files
let g:sh_noisk=1

" I kinda like these space markings
set list

" Don't highlight matching braces
let loaded_matchparen=1
