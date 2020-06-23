"===
" dot vim file by cchiut
"
"
" important
"===
set pastetoggle=<F12>


"===
" moving around, searching and patterns
"===


"===
" displaying text
"===
set nowrap
set sidescroll=1
set number


"===
" syntax, highlighting and spelling
"===
syntax on
filetype plugin indent on

set hlsearch
set colorcolumn=81

"===
" highlight trailing white space
"===
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


"===
" multiple windows
"===
set laststatus=2
set splitbelow
set splitright


"===
" tabs and indenting
"===
set autoindent
set shiftround


"===
" editing text
"===
set undofile
set undodir=$HOME/.vim/undo
set omnifunc=syntaxcomplete#Complete


"===
" SHORTCUT
"
"
" remove highlight
"===
nnoremap <Leader>h :nohl<CR>


"===
" keep indentation in select mode
"===
vnoremap < <gv
vnoremap > >gv


"===
" quick quit
" - quit current window and save
" - quit all windows
"===
noremap <Leader>e :wq<CR>
noremap <Leader>E :quitall!<CR>


"===
" tab
" - <gt> next tab
" - <gT> previous tab
"===
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>


"===
" PLUGIN
"===

"===
" nerdtree
"===
map <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"===
" python_mode
" <leader>r run code
" <leader>b breakpoint bind
" :PymodeLintAuto fix PEP8 errors automatically
" <C-c>g move to definition
" <C-c>ro organize imports
" <C-c>ra add import
"===
"let g:pymode_doc=0
"let g:pymode_lint_ignore="E128"
