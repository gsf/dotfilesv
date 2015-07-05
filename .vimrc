syntax on

set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set hidden
set incsearch
set nojoinspaces
set noshowmatch
set nowrap
set ruler
set showcmd
set sw=2
set ts=2

" http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set nobackup
set noswapfile
set nowritebackup

" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=list:longest,full

" Easy most-recent-buffer switching
nnoremap <Tab> :b#<CR>

" Don't highlight brackets
let loaded_matchparen = 1
