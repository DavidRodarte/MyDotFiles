" Set numbers
set number
set numberwidth=1
set relativenumber
" Identation config
set tabstop=2 shiftwidth=2 expandtab
" Mouse
set mouse=a
" Auto indent code 
set autoindent
" Colors
set termguicolors
" Clipboard 
set clipboard=unnamed
" Change leader key to ,
let mapleader=","
set timeout timeoutlen=1500
" Coc config file
source $HOME/.config/nvim/coc-config.vim

" Plugins 
call plug#begin('~/.config/nvim/plugged')
Plug 'chun-yang/auto-pairs',
Plug 'vim-airline/vim-airline',
Plug 'tpope/vim-fugitive',
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'},
Plug 'mattn/emmet-vim',
Plug 'pangloss/vim-javascript',
Plug 'mxw/vim-jsx',
Plug 'joshdick/onedark.vim',
Plug 'morhetz/gruvbox',
Plug 'neoclide/coc.nvim', {'branch': 'release'},
Plug 'SirVer/ultisnips',
Plug 'mlaursen/vim-react-snippets',
Plug 'ap/vim-css-color',
Plug 'scrooloose/nerdcommenter',
Plug 'ryanoasis/vim-devicons',
Plug 'yaegassy/coc-tailwindcss', {'do': 'yarn install --frozen-lockfile', 'branch': 'feat/support-v3-and-use-server-pkg'},
Plug 'eslint/eslint',
Plug 'pantharshit00/vim-prisma',
call plug#end()

" Theme
set background=dark
syntax on
colorscheme onedark
"colorscheme gruvbox
" Custom Visual highlighting color
hi Visual ctermfg=235 ctermbg=180 guifg=#282C34 guibg=#E5C07B
" Custom comments color 
hi Comment guifg=#7c8a7f
" Filetype
filetype on
filetype indent on
filetype plugin on

" Indent lines
let g:indent_guides_enable_on_vim_startup = 1
" Disable quote concealing in JSON files
let g:vim_json_conceal=0
" Python3 path 
let g:python3_host_prog = '/usr/local/bin/python3'

let g:chadtree_settings = {
      \ 'theme.text_colour_set': 'nerdtree_syntax_dark'
      \ }
  
" Use Prettier to format files 
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"Ctrl-s to Prettier and Save file
nmap <c-s> :Prettier <CR> :w<CR>
imap <c-s> <Esc>:Prettier <CR> :w<CR>

" Use e to CHADopen 
nnoremap e :CHADopen<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Use s-tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()





