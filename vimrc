call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'

Plug 'benmills/vimux'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

colorscheme gruvbox


" NerdTree
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeChDirMode = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
map <Leader>N <plug>NERDTreeTabsToggle<CR>
map <F9> :NERDTreeToggle<CR>


" Key mappings
let mapleader=","

nnoremap <leader>vi :tabe ~/.vimrc<CR>
nnoremap <leader>do :tabe ~/.dotfiles<CR>
nnoremap <leader>src :source ~/.vimrc<CR>
noremap <leader>b <ESC>:set wrap!<CR>

" Settings
set number
set pastetoggle=<F8>
set relativenumber
set clipboard=unnamed

inoremap jk <esc>
nnoremap ; :

map <leader>q <ESC><ESC>:q<CR>
map <leader>! <ESC><ESC>:q!<CR>

" copy and paste
noremap <leader>y "*y
noremap <leader>p "*p

" Vimux
function! _nose_test_search(fragment)
  let line_num = search(a:fragment, "bs")
  if line_num > 0
    return split(split(getline(line_num), " ")[1], "(")[0]
  else
    return ""
  endif
endfunction

function! RunNoseTestFocused()
  let test_class = _nose_test_search("class ")
  let test_name = _nose_test_search("def test_")

  if test_class == "" || test_name == ""
    echoerr "Couldn't find class and test name to run focused test."
    return
  endif
  VimuxRunCommand("nosetests -s ".expand("%").":".test_class.".".test_name)
endfunction

nmap <silent> <leader>T :VimuxRunCommand("nosetests -s ".expand("%"))<CR>
nmap <silent> <leader>t :call RunNoseTestFocused()<CR>


" window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" correct vim color in tmux
" https://github.com/tmux/tmux/issues/699#issuecomment-269572025
set background=dark
set t_Co=256
