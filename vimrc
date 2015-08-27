"Automatically indent when adding curley bracket, etc.
set smartindent

"Turn of line wrapping and set F4 to toggle
set nowrap
"map <F4> :set nowrap!<CR>

"Set tabs to groups of four spaces
set shiftwidth=4
set tabstop=4
"set expandtab "this causes the tab to be spaces not \t
set noexpandtab "janus uses expandtab by default
"set smarttab

"Turn on line numbers
set number

"allow backspacing over autoindent, linebreaks, start of insert
set backspace=indent,eol,start

"Ensure case sensitive search
set noic

"Set colors
colorscheme desert
hi lineNr   guifg=#99cc99

"Display incomplete commands
"set showcmd

"fold functions with zc and unfold with zo
set foldmethod=indent

"Make 't' the command to insert one charecter
nnoremap t :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap T :exec "normal a".nr2char(getchar())."\e"<CR>

"Turn off highlights on current search with space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Turn on syntax highlights
filetype plugin indent on
syntax on

"Associate .ino files with correct syntax coloring
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

imap jj <esc>
