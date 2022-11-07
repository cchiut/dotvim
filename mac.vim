"===
" dot vim file by cchiut
"===

call plug#begin()

" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" https://github.com/dense-analysis/ale#installation
Plug 'dense-analysis/ale'

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/junegunn/fzf/blob/master/README-VIM.md
Plug '/opt/local/share/fzf/vim'

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
let g:ale_completion_enabled=1
nmap K :ALEHover<CR>
nmap gd :ALEGoToDefinitionInTab<CR>
nmap gr :ALEFindReferences<CR>

"===
" fzf
"===
nmap <Leader>f :FZF<CR>

"===
" lightline
"===
let g:lightline = {
	\ 'colorscheme': 'iceberg',
	\ }

"===
" iceberg
"===
colorscheme iceberg


"===
" fold
"===
" set foldmethod=indent
" set foldlevel=1


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
nmap <Leader>h :nohl<CR>

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
" status bar, windows and tabs
"===
set laststatus=2
set splitright
set splitbelow
set mouse=a

"===
" netrw
"===
let g:netrw_liststyle=3
let g:netrw_winsize=20
let g:netrw_banner=0
nmap <Leader>t :Lexplore %:p:h<CR>
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

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
" set omnifunc=syntaxcomplete#Complete

"===
" quick save and quit
" <Leader-s> - save surrent window
" <Leader-e> - quit current window and save
" <Leader-E> - quit all windows
"===
nmap <Leader>s :w<CR>
nmap <Leader>e :wq<CR>
nmap <Leader>E :quitall!<CR>

if has("unix")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		if has("gui_vimr")
			set undodir=$HOME/.vim/nvim_undo
		else
			set undodir=$HOME/.vim/undo
		endif
	endif
endif
