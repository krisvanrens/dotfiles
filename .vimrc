" Vundle-related setup -- required.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins.
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'preservim/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'rust-lang/rust.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'kergoth/vim-bitbake'

" Vundle-related setup -- required..
call vundle#end()
filetype plugin indent on

" Basic configuration.
set confirm
set colorcolumn=120
set cursorline
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set nobackup
set number
set ruler
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set smarttab
set tabstop=2
set title
set wrap
set encoding=utf-8

syntax on

" Remember previous position.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Persistent undo.
set undofile
set undodir=~/.vim/undodir

" Color and character setup.
set background=dark
set fillchars+=vert:│
set fillchars+=stlnc:-
set listchars=eol:¬,tab:>→,trail:·,extends:>,precedes:<,space:·
let g:jellybeans_overrides = { 'background': { 'ctermbg': 'none', '256ctermbg': 'none' } }
if has('gui_running')
  if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
  endif
  set guifont=FiraCode\ NF\ Regular\ 11
endif
colorscheme jellybeans
highlight ColorColumn ctermbg=234
highlight ColorColumn guibg=Grey11

" Powerline fonts for airline.
let g:airline_powerline_fonts = 1

" Strip whitespace command.
nnoremap <leader>sw :%s/\s\+$//<cr>:let @/=''<CR>
command! Stripwhitespace :%s/\s\+$//

" Remove trailing spaces at write time.
autocmd BufWritePre * %s/\s\+$//e

let g:NERDTreeWinSize=48

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++20 -Wall -Wextra"

let g:rustfmt_autosave = 1

augroup nexus_ft
  au!
  autocmd BufNewFile,BufRead *.nxs set syntax=rust
augroup END
