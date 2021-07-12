" ================================
" Vim-Plug
" ================================

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" ================================
" Plugins
" ================================

call plug#begin(expand('~/.config/nvim/plugged'))

" Themes
Plug 'morhetz/gruvbox'

" Language Server Protocol / Completions
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Status Line
Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }

" File Tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Multi-Cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" TPOPE!
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'	" Git Wrapper
Plug 'tpope/vim-rhubarb' 	" required by fugitive to :Gbrowse

" Markdown Previewer
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" CSS Color Highlighting
Plug 'norcalli/nvim-colorizer.lua'

" Emmet
Plug 'mattn/emmet-vim'

call plug#end()
