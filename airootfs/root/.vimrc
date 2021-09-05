set noexpandtab
set timeoutlen=200
set linebreak
set showcmd
set number
set relativenumber
set tabstop=4
set mouse=a
set shiftwidth=4
set laststatus=0
set fileencodings=utf-8

syntax on

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x

noremap < }
noremap > {
noremap ü )
noremap Ü (

noremap ä ]}
noremap Ä [{
noremap ö ])
noremap Ö [(

noremap <Up> gk
noremap <Down> gj

inoremap <Up> <Esc>gka
inoremap <Down> <Esc>gja

noremap te :tabe
noremap tq :tabclose<Return>
noremap tn :tabn<Return>
noremap tp :tabp<Return>
