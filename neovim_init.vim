set encoding=utf-8
set background=dark

set ignorecase

filetype on
filetype plugin on
filetype indent on
syntax on

" Tabs no more...
set expandtab
set shiftwidth=4
set softtabstop=4
set ts=4

" ...except when dealing with the Jurrasic World
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

set ruler
set number

" Toggle line numbers
map <leader>n :set number!<CR>

" Support for saving a file as superuser
command W :execute ':silent w !sudo tee % > /dev/null' <bar> :edit!
command WQ :execute 'W' <bar> :q


"function CheckForBazelFiles()
"    " Create shortcut for running buildifier on Bazel-related files. 
"
"    let fname=expand('%:t')
"    let bazel_special_files=["BUILD", "WORKSPACE"]
"    let is_bazel_special_file=index(bazel_special_files, fname) >= 0
"
"    if !is_bazel_special_file
"        let extension=expand('%:e')
"        let bazel_suffixes=["BUILD", "bzl"]
"        let is_bazel_file=index(bazel_suffixes, extension, 0, 1) >= 0
"    endif
"
"    if is_bazel_special_file || is_bazel_file
"        map <leader>b :silent w <bar>
"            \ :silent execute '!buildifier %' <bar>
"            \ :silent edit! <bar>
"            \ :silent w<CR>
"    endif
"endfunction
"
"call CheckForBazelFiles()
