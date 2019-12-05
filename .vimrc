execute pathogen#infect() 

set number
set shiftwidth=2
set lazyredraw " Don't redraw screen when running macros.
set softtabstop=2
set list listchars=tab:»·,trail:·
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set scrolloff=3
syntax enable
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

colo CandyPaper

runtime macros/matchit.vim

"Leader Map keys
let mapleader = ","
map <leader>h :echo "hellp:<cr>
map <leader>so :source $MYVIMRC<cr>
map <leader>vi :tab new $MYVIMRC<cr>
map <leader>w :write<cr>
map <leader>r :RuboCop -a<cr>
map <leader>cs :tab new ~/cheetsheet<cr>
map <leader>, :Rake<cr>
map <leader>f :RunSpec<cr>
map <leader>l :RunSpecLine<cr>
map <leader>,. :.Rake<cr>
map <leader>tb :TagbarToggle<cr>
map <leader>sp :set paste<cr>
map <leader>snp :set nopaste<cr>
" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>t :tabedit <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

"InsertMode map keys
imap jk <esc>
imap kj <esc>
"Normal mode maping 
nmap <C-o> O<Esc>
nmap <CR> o<Esc>


" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ========================================================================
"  Vundle stuff
"  ========================================================================
 set nocompatible " Required by vundle
 filetype off     " Required by vundle
"
"  set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " let Vundle manage Vundle, required
 " use PluginInstall to install new plugin
 Plugin 'gmarik/Vundle.vim'
 Plugin 'bling/vim-airline'
 Plugin 'tpope/vim-endwise'
 Plugin 'elzr/vim-json'
 Plugin 'tpope/vim-rails'
 Plugin 'tpope/vim-fugitive'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'vim-scripts/tagbar'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-repeat'
 Plugin 'scrooloose/nerdtree'
 Plugin 'ervandew/supertab'
 Plugin 'ngmy/vim-rubocop'
 Plugin 'mileszs/ack.vim'
 Plugin 'skwp/vim-rspec',
 Plugin 'Townk/vim-autoclose'
 Plugin 'vim-javascript'
 "Plugin 'jparise/vim-graphqlt'
 Plugin 'vim-multiple-cursors'
 Plugin 'fatih/vim-go'
 Plugin 'vim-syntastic/syntastic'



 " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

