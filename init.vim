" ===================== vim-plug =============================
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'austintaylor/vim-indentobject'
Plug 'christoomey/vim-tmux-navigator'
Plug 'juvenn/mustache.vim'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'antoinemadec/coc-fzf'
Plug 'lifepillar/vim-solarized8', {'branch': 'neovim'}
Plug 'ojroques/vim-oscyank'
Plug 'jsmulrow/vim-githublink'
Plug 'terryma/vim-expand-region'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mhinz/vim-grepper'
Plug 'yssl/QFEnter'
Plug 'github/copilot.vim'
Plug 'tris203/precognition.nvim'

call plug#end()

call coc#add_extension('coc-pyright')
call coc#add_extension('coc-prettier')
call coc#add_extension('coc-eslint')
call coc#add_extension('coc-cssmodules')
call coc#add_extension('coc-tsserver')
call coc#add_extension('coc-elixir')
call coc#add_extension('coc-css')
call coc#add_extension('coc-sourcekit')

lua <<EOF
local disable_function = function(lang)
  local buf_name = vim.fn.expand("%")
  if lang == 'javascript' and string.find(buf_name, "en%-US") then
    return true
  end
end
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "rust", "javascript", "typescript", "tsx", "sql", "elixir", "kotlin", "java" },
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = disable_function,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
}

EOF

" Grepper!
let g:grepper = {}
let g:grepper.tools = ['rg', 'ag', 'ack', 'ack-grep', 'grep', 'findstr', 'pt', 'sift', 'git']

" QFEnter
let g:qfenter_keymap = {}
let g:qfenter_keymap.open = ['<CR>', '<2-LeftMouse>']
let g:qfenter_keymap.vopen = ['s']
let g:qfenter_keymap.hopen = ['x']
let g:qfenter_keymap.topen = ['t']

" auto-pairs
let g:AutoPairsMultilineClose = 0

" ===================== General settings ============================

filetype plugin indent on

set nocompatible                                             " Don't bother with vi compatibility
syntax enable                                                " Enable syntax highlighting
set nocursorline                                             " Don't highlight current line
set ttyfast                                                  " More characters sent to terminal
set colorcolumn=80                                           " 80 character line
set autoindent                                               " Automatically indent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 2 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" Trigger autoread when switching buffers or gaining focus.
autocmd FocusGained,BufEnter * silent! checktime

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX') && !has('nvim')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
nmap <leader>a :Grepper<CR>
nmap <leader>d :NERDTreeToggle<CR>
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>r :NERDTreeFind<CR>
nmap <leader>t :FzfLua files git_icons=false<CR>
nmap <leader>b :FzfLua buffers<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <C-W>t :tabnew<CR>

" plugin settings
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Map capital versions of save and quit commands to the real commands.
command! W :w
command! Wq :wq
command! WQ :wq
command! Q :q

" highlight search
set hlsearch
nmap <leader>hl :let @/ = ""<CR>

" Faster syntax highlighting.
syntax sync minlines=256

" Better split settings.
set splitright
set splitbelow

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" GUI settings.
let g:solarized_termtrans = 1
set termguicolors
set background=dark
set t_Co=256
colorscheme solarized8

set timeoutlen=1000 ttimeoutlen=0 " Don't wait for <ESC> shortcuts

set noshowmode " Don't show the -- NORMAL -- status text, since we have Airline

" Don't overwrite paste when pasting in visual mode
xnoremap p pgvy

" Disable Ex mode
:nnoremap Q <Nop>

" " Disambiguate ,a & ,t from the Align plugin, making them fast again.
" "
" " This section is here to prevent AlignMaps from adding a bunch of mappings
" " that interfere with the very-common ,a and ,t mappings. This will get run
" " at every startup to remove the AlignMaps for the *next* vim startup.
" "
" " If you do want the AlignMaps mappings, remove this section, remove
" " ~/.vim/bundle/Align, and re-run rake in maximum-awesome.
" function! s:RemoveConflictingAlignMaps()
"   if exists("g:loaded_AlignMapsPlugin")
"     AlignMapsClean
"   endif
" endfunction
" command! -nargs=0 RemoveConflictingAlignMaps call s:RemoveConflictingAlignMaps()
" silent! autocmd VimEnter * RemoveConflictingAlignMaps

let g:airline_powerline_fonts = 1

" coc Config =================================================================

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" use <cr> to confirm completion.
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-next)
nmap <silent> ]g <Plug>(coc-diagnostic-prev)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gR <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-codeaction-cursor)
nmap <silent> gF :call CocActionAsync('format')<CR>
nmap <silent> gj <Plug>(coc-float-jump)
nmap <silent> ga :CocCommand eslint.executeAutofix<CR>

" Run eslint when saving files.
autocmd BufWritePost *.tsx :CocCommand eslint.executeAutofix

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use OSC52
" autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankRegister "' | endif
let g:oscyank_silent = v:true

" Print github link.
let g:gh_open_command = ' '

" coc Config =================================================================

