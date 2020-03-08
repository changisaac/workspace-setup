"Isaac Chang
"File viewer plugin"
"execute pathogen#infect()
"map <C-n> :NERDTreeToggle<CR>

map <c-o> :vertical resize +10
map <c-l> :vertical resize -10

set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

filetype on 
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
" So mouse scroll mwobes faster "
set so=7

" Turn on wild menu "
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
set wildignore+=.git\*,.hg\*,.svn\*
else
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always have ruler at bottom "
set ruler

" Height of the command bar
set cmdheight=1

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Since most stuff is in version control "
set nobackup
set nowb
set noswapfile

"set colorcolumn=101
"set lbr
"set textwidth=100

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Ctrl+l to unhighlight after search
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

syntax enable
colorscheme monokai
