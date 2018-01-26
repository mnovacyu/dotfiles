syntax on
set backspace=indent,eol,start
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set esckeys laststatus=2
set mouse=a
let g:Powerline_symbols = 'unicode'
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
