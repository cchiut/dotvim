""" PATHOGEN """
call pathogen#infect()

" options 1st
syntax on
filetype plugin indent on

" options 2nd
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set number
set colorcolumn=81
set ruler
set scrolloff=1
set autoindent
set smarttab
set undofile
set undodir=$HOME/.vim/undo

""" ENCODING """
set fileencodings=ucs-bom,utf-8,big5,latin1

""" OMNI-COMPLETION """
set omnifunc=syntaxcomplete#Complete

" ruby spec
autocmd Filetype ruby let g:rubycomplete_buffer_loading=1
autocmd Filetype ruby let g:rubycomplete_classes_in_global=1
autocmd Filetype ruby let g:rubycomplete_rails= 1

""" SHORTCUT """
cnoremap <C-a>	<Home>
cnoremap <C-e>	<End>

" tab - use gt to jump next tab, gT for revious.
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>
	
""" PLUGINS """
" SuperTab
" use <c-v> to insert ture tab
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabCompletionContexts=['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence=['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery=["&omnifunc:<c-x><c-o>", "&completefunc:<c-x><c-u>"]
let g:SuperTabRetainCompletionDuration='completion'
    
" FuzzyFinder
" <C-j> to open in split window 
" <C-k> for vertical
" <C-]> to delete selected buffer
let g:fuf_dataDir = "$HOME/.vim/fuf"
nnoremap <Leader>fb :FufBuffer<CR>
nnoremap <Leader>fl :FufLine<CR>
nnoremap <Leader>fd :FufDir<CR>
nnoremap <Leader>ff :FufCoverageFile<CR>
