if has('gui_running')
	set co=140
	set lines=45
else
	set co=120
	set lines=35
endif

set printencoding=utf-8

set ignorecase
set smartcase
set nu
set ruler
set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
syntax on
set hlsearch
let maplocalleader=','
set autochdir " change current working directory when file opens
set imi=1 " disable IME when quit insert mode (is it woking with baram?)
set nobackup
set nowritebackup
set tabstop=4
set softtabstop=4
set shiftwidth=4



if has('gui_running')
	colorscheme asmanian2
	set guifont=Bitstream\ Vera\ Sans\ Mono:h11:cSHIFTJIS           "font setting <--- main font
	set guioptions-=T                               "Hide Toolbar
	set guioptions-=r                              "Hide VerticalSrollbar
	set guioptions+=h                               "Show HorizontalSrollbar
	set guioptions+=m                               "Hide Menubar
	set shortmess+=I                                "Hide Starting Intro Message
	set confirm                                     "File Write Confirm
else
	colorscheme peachpuff
endif


set encoding=utf-8
set fileencoding=utf-8

if has('mac')
	set guifont=Monaco:h16
endif

if has('win32')
	set fileencoding=japan
	set encoding=japan
endif


"= Navigation Setting =================================================================
" move the selected block up or down
vmap <C-j> :m'>+<CR>gv=gv
vmap <C-k> :m'<-2<CR>gv=gv

" Key Binding for Tab {{{
noremap <silent> th :tabprev<CR>
noremap <silent> tl :tabnext<CR>
noremap <silent> tn :tabnew<CR>
noremap <silent> td :tabclose<CR>
" }}}

" .vimrc hotkey {{{
set clipboard=unnamed
vmap <C-v> <Esc>"+p
imap <C-v> <Esc>"+p
nmap <C-v> "+p
vmap <C-c> <Esc>"+y
imap <C-c> <Esc>"+y
nmap <C-c> "+y
" }}}

nmap ; :
nmap Q :q!<CR>

nmap <C-e> :set enc=utf8<CR>
















"= Sample Setting =====================================================================
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'



let g:fuf_modesDisable = [] " {{{
nnoremap <silent> <LocalLeader>h :FufHelp<CR>
nnoremap <silent> <LocalLeader>f  :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <LocalLeader>r :FufFile \*\*\/<CR>
nnoremap <silent> <LocalLeader>b  :FufBuffer<CR>
"nnoremap <silent> <LocalLeader>4  :FufDirWithCurrentBufferDir<CR>
""nnoremap <silent> <LocalLeader>$  :FufDir<CR>
"nnoremap <silent> <LocalLeader>5  :FufChangeList<CR>
nnoremap <silent> <LocalLeader>m  :FufMruFile<CR>
""nnoremap <silent> <LocalLeader>7  :FufLine<CR>
"nnoremap <silent> <LocalLeader>8  :FufBookmark<CR> 
""nnoremap <silent> <LocalLeader>*  :FuzzyFinderAddBookmark<CR><CR>
"nnoremap <silent> <LocalLeader>t  :FufTaggedFile<CR> 
"" check later parksungho
" i need to tag files with $ctags -R --extra=+f . 
" " }}}



" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...




"= Addtional Bundles ==================================================================
Bundle 'Align'
Bundle 'Markdown-syntax'
Bundle 'closetag.vim'
"" Ctrl+- create matching close tag

"Bundle 'minibufexplorerpp'
""let g:miniBufExplMapWindowNavVim = 1  " Ctrl+[hjkl] to move

Bundle 'bufexplorer.zip'
nnoremap <silent><LocalLeader>e :BufExplorer<CR>
" if want to open in a new tab press 't' or shift+enter

" snippets textmate tab
Bundle 'snipMate'
Bundle 'AutoClose'
Bundle 'ZoomWin'
" <c-w>o to toggle current window zoom





filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

