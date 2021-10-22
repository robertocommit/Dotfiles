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
  Plug 'drewtempelmeyer/palenight.vim'                " Neovim Theme
  Plug 'mhinz/vim-startify'                           " Start Screen
  Plug 'ap/vim-css-color'                             " Display CSS colors
  Plug 'pangloss/vim-javascript'                      " Javascript support
  Plug 'leafgarland/typescript-vim'                   " Typescript support
  Plug 'lewis6991/gitsigns.nvim'                      " Git show changes
  Plug 'voldikss/vim-floaterm'                        " Floating terminal
call plug#end()

let g:coc_global_extensions = [
  \'coc-json',
  \'coc-html',
  \'coc-tsserver',
  \'coc-go',
  \'coc-tailwindcss',
  \'coc-sql',
  \'coc-eslint',
  \'coc-vetur']

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
set termguicolors                           " Better colors

" Folding
filetype plugin indent on
syntax on
autocmd Filetype * AnyFoldActivate
set foldlevel=99

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
set backspace=indent,eol,start

" Mappings FZF
nnoremap <silent>ff :Files<CR>
nnoremap <silent>fg :Rg<CR>

" Mapping tabbar
map <C-A-PageUp> <Plug>vem_move_buffer_left-
map <C-A-PageDown> <Plug>vem_move_buffer_right-
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>

" Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Set Theme
set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
let g:palenight_terminal_italics=1

" Exist insert mode after inactivity
au CursorHoldI * stopinsert

" Floating terminal
let g:floaterm_keymap_new = 'to'
let g:floaterm_keymap_kill = 'tc'
let g:floaterm_keymap_show = 'ts'
let g:floaterm_keymap_hide = 'th'
