"===
" dot vim file by cchiut
"===

set nocp


call plug#begin()

" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" https://github.com/dense-analysis/ale#installation
Plug 'dense-analysis/ale'

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" https://github.com/junegunn/fzf/blob/master/README-VIM.md
Plug '/usr/share/doc/fzf/examples'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/cocopon/iceberg.vim/
Plug 'cocopon/iceberg.vim'

call plug#end()

"===
" editorconfig
"===
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"===
" ale
"===
let g:ale_linters = {
\   'python': ['mypy', 'pylsp'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autoimport', 'autopep8'],
\}
let g:ale_completion_enabled=1
nmap <Leader>eh :ALEHover<CR>
nmap <Leader>ef :ALEFix<CR>
nmap <Leader>ed :ALEGoToDefinition -vsplit<CR>
nmap <Leader>er :ALEFindReferences<CR>

"===
" fzf
"===
nmap <Leader>f :FZF<CR>

"===
" lightline
"===
let g:lightline = {
\   'colorscheme': 'iceberg',
\ }

"===
" iceberg
"===
colorscheme iceberg


"===
" fold
"===
set foldmethod=syntax
set foldlevelstart=11

"===
" displaying text
"===
set nowrap
set sidescroll=1
set number

"===
" highlighting
"===
set hlsearch
set colorcolumn=81

"===
" remove highlight
"===
nmap <Leader>nh :nohl<CR>

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
" status bar, windows, mouse and cd/pwd
"===
set laststatus=2
set splitright
set splitbelow
set mouse=a
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>

"===
" tabs
" <gt> - next tab
" <gT> - previous tab
"===
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tf :tabfirst<CR>
nmap <Leader>tl :tablast<CR>
nmap <Leader>tc :tabclose<CR>
nmap <Leader>to :tabonly<CR>

"===
" editing text
"===
set autoindent
set shiftround
vmap < <gv
vmap > >gv
set undofile
set undodir=$HOME/.vim/undo

"===
" quick save and quit
" <Leader-s> - save surrent window
" <Leader-q> - quit current window and save
" <Leader-Q> - quit all windows
"===
nmap <Leader>s :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>Q :quitall!<CR>
