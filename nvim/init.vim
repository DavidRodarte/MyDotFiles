" Set numbers
set number
" Identation config
set tabstop=2 shiftwidth=2 expandtab

" Plugins 
call plug#begin('~/.config/nvim/plugged')
Plug 'chun-yang/auto-pairs',
Plug 'vim-airline/vim-airline',
Plug 'tpope/vim-fugitive',
Plug 'ms-jpq/chadtree',
Plug 'mattn/emmet-vim',
Plug 'Yggdroot/indentLine',
Plug 'glepnir/indent-guides.nvim',
Plug 'karb94/neoscroll.nvim',
Plug 'yamatsum/nvim-cursorline',
Plug 'kyazdani42/nvim-web-devicons',
Plug 'yamatsum/nvim-nonicons',
Plug 'pangloss/vim-javascript',
Plug 'mxw/vim-jsx',
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdcommenter',
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
call plug#end()

" Theme
syntax on
colorscheme onedark

filetype plugin on

" Use º to CHADopen 
nnoremap º :CHADopen<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# 'qs'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Tabout-like plugin
inoremap <silent> jj <c-o>:call search('}\\|)\\|]\\|>', 'cW')<cr><Right>
