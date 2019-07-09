set number
set tabstop=2
set shiftwidth=2
set hlsearch
set paste
set ic
set encoding=UTF-8
set autoindent
set mouse=a

retab

syntax on

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'editorconfig/editorconfig-vim'
	Plug 'matze/vim-move'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'ryanoasis/vim-devicons'
	Plug 'alvan/vim-closetag'
	Plug 'ap/vim-css-color'
	Plug 'calviken/vim-gdscript3'
	Plug 'mattn/emmet-vim'
	Plug 'leafgarland/typescript-vim'
	Plug 'manasthakur/vim-commentor'
	Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
	Plug 'tveskag/nvim-blame-line'
	Plug 'mhinz/vim-signify'
	Plug 'https://github.com/Daniet/palenight.vim.git'
call plug#end()

colorscheme palenight
let g:palenight_terminal_italics=1

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-d> :NERDTreeFocus<CR>

" vim move
let g:move_key_modifier = 'A'
map <A-j> Move current line/selections up
map <A-k> Move current line/selections down

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" indent guides
let g:indent_guides_enable_on_vim_startup = 1

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
	\ 'typescript.tsx': 'jsxRegion,tsxRegion',
	\ 'javascript.jsx': 'jsxRegion',
	\ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_mode='n'
let g:user_emmet_mode='inv'
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','

" typesscript
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc


" configuracion pug
let g:html5_event_handler_attributes_complete = 0 " Disable event-handler attributes
let g:html5_rdfa_attributes_complete = 0          " Disable RDFa attributes
let g:html5_microdata_attributes_complete = 0     " Disable microdata attributes
let g:html5_aria_attributes_complete = 0          " Disable WAI-ARIA attribute

" configuracion git blame line
nmap <silent> <leader>b :ToggleBlameLine<CR>
let g:blameLineUseVirtualText = 0
map <C-g> :ToggleBlameLine <CR>

" Ordenar por 'name', 'time', o 'size'
let g:netrw_sort_by="FileType"

" configuracion blame git
"g:signify_vcs_list
"h signify-modus-operandi
