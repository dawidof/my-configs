filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'elzr/vim-json'
Plugin 'maksimr/vim-jsbeautify'

Plugin 'Chiel92/vim-autoformat'

call vundle#end()

syntax enable
filetype plugin indent on
