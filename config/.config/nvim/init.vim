" ================================
" Global Settings
" ================================
syntax enable
set termguicolors
set nu relativenumber
set list lcs=tab:\¦\ 
set wrap
set scrolloff=10
set mouse=a
set mousemodel=popup
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set updatetime=50

" Colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

"" Backups
set nobackup
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Keybinds
source ~/.config/nvim/keybinds.vim

"" Plugins
source ~/.config/nvim/plugins.vim

"" Abbreviations/Shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" LSP Stuff
lua <<EOF
require("lsp")
require("statusbar")
require("completion")
require'colorizer'.setup()
EOF

"" Nvim Tree
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

"" Markdown Previewer
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
