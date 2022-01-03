call plug#begin('~/.config/nvim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
  Plug 'junegunn/fzf.vim'                             " FZF
  Plug 'neovim/nvim-lspconfig'                        " LSP config
  Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Cocinstall plugings
  Plug 'nvim-lua/completion-nvim'                     " Autocompletion
  Plug 'preservim/nerdtree'                           " Nerdtree
  Plug 'kyazdani42/nvim-web-devicons'                 " Nerdtree icons
  Plug 'psliwka/vim-smoothie'                         " Scrolling
  Plug 'b3nj5m1n/kommentary'                          " Comment
  Plug 'pseewald/vim-anyfold'                         " Folding
  Plug 'vim-airline/vim-airline'                      " Status bar
  Plug 'pacha/vem-tabline'                            " For tabs
  Plug 'ryanoasis/vim-devicons'                       " Icons
  Plug 'miyakogi/conoline.vim'                        " Cursor highlight
  Plug 'tpope/vim-surround'                           " Sourround elements
  Plug 'yggdroot/indentline'                          " Show line indentation
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " Golang
  Plug 'mhinz/vim-startify'                           " Start Screen
  Plug 'ap/vim-css-color'                             " Display CSS colors
  Plug 'pangloss/vim-javascript'                      " Javascript support
  Plug 'leafgarland/typescript-vim'                   " Typescript support
  Plug 'lewis6991/gitsigns.nvim'                      " Git show changes
  Plug 'voldikss/vim-floaterm'                        " Floating terminal
  Plug 'cespare/vim-toml'                             " Syntaxt Toml
  Plug 'bignimbus/pop-punk.vim'                       " Color scheme
  Plug 'justinmk/vim-sneak'                           " Advanced motion
  Plug 'haya14busa/incsearch.vim'                     " Highlight search
  Plug 'tomlion/vim-solidity'                         " Solidity
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "Markdown
  Plug 'reedes/vim-pencil'                            " Writing utilities and tools
call plug#end()

" Automagically runs Pencil for md and txt files
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

colorscheme pop-punk

let g:coc_global_extensions = [
  \'coc-html',
  \'coc-tailwindcss',
  \'coc-tsserver',
  \'coc-go',
  \'coc-sql',
  \'coc-eslint',
  \'coc-svelte',
  \'coc-vetur']
  

" Golang strict format
let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1

" Autostart
let g:conoline_auto_enable = 1              " Enable show current line on start
let g:indentLine_conceallevel=1             " Enable show indent line on start

" Set
scriptencoding utf-8                        " Set utf-8 as default script encoding
set hidden
set encoding=utf-8                          " The encoding displayed.
set fileencoding=utf-8                      " The encoding written to file.
set number                                  " Line numbers on
set relativenumber                          " Dinamic line numbers
set showmode                                " Always show mode
set showcmd                                 " Show commands as you type them
set textwidth=120                           " Text width is 120 characters
set cmdheight=1                             " Command line height
set showmatch                               " Show matching brackets when text indicator is over them
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search
set mouse=a                                 " Allow mouse interaction
set completeopt=menuone,noinsert,noselect
set clipboard+=unnamedplus                  " Copy and paste, requires xclip, gvim
set conceallevel=1
set scrolloff=3                             " Leave n rows top/down when scrollinh
set colorcolumn=80                          " Vertical bar
highlight ColorColumn ctermbg=238           " Change color verical bar

" Mappings
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <c-s> <Esc>:w<CR>
inoremap <C-y> <C-u>
inoremap <C-x> <C-w>
inoremap <C-c> <C-o>de
set backspace=indent,eol,start

" Mappings FZF
nnoremap <silent>ff :Files<CR>
nnoremap <silent>fg :Rg<CR>

" Mapping tabbar
map <C-A-PageUp> <Plug>vem_move_buffer_left-
map <C-A-PageDown> <Plug>vem_move_buffer_right-
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>

" Mapping search highlight
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Exist insert mode after inactivity
au CursorHoldI * stopinsert

" Floating terminal
let g:floaterm_keymap_new = '<C-A-n>'
let g:floaterm_keymap_kill = '<C-A-k>'
let g:floaterm_keymap_show = '<C-A-s>'
let g:floaterm_keymap_hide = '<C-A-h>'

" Folding
filetype plugin indent on
syntax on
autocmd Filetype * AnyFoldActivate
set foldlevel=99
