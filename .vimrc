" Modificações para Python feitas de acordo com o site:
" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

set shiftwidth=4
set softtabstop=4
set ts=4
autocmd FileType py :set expandtab
set tags=./tags,../tags,/home/acacio/tags
set ignorecase
set encoding=utf-8

set ruler
set number

" Não funciona com a versão 7.2...
map <leader>g :GundoToggle<CR>

syntax on
filetype on
filetype plugin indent on

let g:pyflakes_use_quickfix=0
let g:pep8_map='<leader>8'
map <leader>1 :PyflakesUpdate<CR>
map <leader>0 :PyflakesToggle<CR>

" Tab para completar
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview

" Navegador de arquivos
map <leader>n :NERDTreeToggle<CR>

" Ropevim
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Ack: Grepper
map <leader>a <ESC>:Ack!

" Complexidade
map <leader>c <ESC>:Complexity

" Integração com o git
" set statusline=%{fugitive#statusline()}
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

 if has("gui_running") 
	"highlight SpellBad term=underline gui=undercurl guisp=Orange 
	highlight SpellBad term=underline gui=undercurl guisp=Green 
endif 

" \p para modo paste
map <leader>p :set invpaste<CR>
set pastetoggle=<leader>p

map <leader>n :set nonumber<CR>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
set t_Co=256
if &t_Co > 2 || has("gui_running")
	set background=dark
	colorscheme experiment
	"colorscheme acacio
	"colorscheme desert
	highlight SpellBad term=underline gui=undercurl guisp=Green 
	set mouse=i
endif

" Suporte a salvar sem ter permissão:
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command WQ :execute 'W' | :q
set switchbuf=useopen

autocmd BufWritePre * %s/\s\+$//e

let g:utl_cfg_hdl_scm_http_system = "silent !/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome '%u#%f' &"

" Calculadora
imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR>

" Show syntax highlighting groups for word under cursor
nmap <leader>z :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Mapeia C-t para C-[
map <C-p> <C-t>
map <C-]> <ESC>:stag 
