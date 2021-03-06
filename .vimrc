set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'uarun/vim-protobuf'
Plugin 'rizzatti/dash.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'solarnz/thrift.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'


call vundle#end()
filetype plugin indent on

syntax on
set hlsearch
set incsearch
set showmode
set ruler
set number
set cindent
set autoindent
set smartindent
set showmatch
set mouse=a

"Tab Settings
set tabstop=4
set expandtab
set shiftwidth=4

"Color Settings
set background=light
"colorscheme solarized

"Enable airline
set laststatus=2

"pymode
let g:pymode_folding=0
let g:pymode_doc=0
let g:pymode_options_max_line_length = 120

"CtrlP Ignorance
set wildignore+=*/tmp/*,*.swp,*.pyc

nmap <C-e>	:NERDTreeToggle<CR>
nmap <C-x>	:qall<CR>

"Ingore Alphabet Case
:command Q q
:command W w
:command WQ wq
:command Wq wq

"personal info
map <F6>	:call AddTitle()<CR>
map <F7>	:call UpdateTitle()<CR>

function AddTitle()
	call append(0,"/*--------------------------------------------------------------")
	call append(1," * Filename: ".expand("%:t"))
	call append(2," * by@current 491072874@qq.com")
	call append(3," * Last modified: ".strftime("%Y/%m/%d %H:%M"))
	call append(4," * Description:")
	call append(5," *")
	call append(6," *-------------------------------------------------------------*/")
	echohl WarningMsg|echo "Successfully added copyright."|echohl None
endfunction
"Update filename and modifing time
function UpdateTitle()
	call setline(2," * Filename: ".expand("%:t"))
	call setline(4," * Last modified: ".strftime("%Y/%m/%d %H:%M"))
	echohl WarningMsg|echo "Successfully updated copyright."|echohl None
endfunction
