set nocompatible

so ~/.vim/plugins.vim

syntax enable


set backspace=indent,eol,start
let mapleader = ','


set expandtab
set shiftwidth=2
set softtabstop=2

set smarttab
set et 

set relativenumber
set number
set numberwidth=5
set nowrap

set wrap
set ai
set cin

set showmatch

"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|bower_components|build)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



"--------------VISUAL--------------"

colorscheme atom-dark-256
set t_Co=256

set guifont=Fira_Code:h12
set linespace=6

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=T 
set guioptions-=m 

set listchars=tab:··
set list



"-------------SPLITS-------------"

set splitbelow
set splitright



"--------------SEARCH--------------"
set hlsearch
set incsearch
set showmatch 
set ignorecase
set smartcase
set lz



"--------------MAPPINGS-------------"


nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <Leader>nn :NERDTreeToggle<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



"map <c-l> :tabn<cr>
"map <c-h> :tabp<cr>
"map <c-n> :tabnew<cr>


"beautify
map <F2> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <F2> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <F2> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <F2> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <F2> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <F2> :call CSSBeautify()<cr>


let g:airline#extensions#tabline#enabled = 1

"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set fillchars+=stl:\ ,stlnc:\


set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
     set guifont=Meslo\ LG\ S\ for\ Powerline
   endif
endif



let g:jsx_ext_required = 0


"--------------Auto-Commands-------------"



augroup autosourcing " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source %
augroup END " }


autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"" For Haml
au! BufRead,BufNewFile *.haml setfiletype haml

"" Highlighting for .ejs files
au BufNewFile,BufRead *.ejs set filetype=html


