"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋    
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A

"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set relativenumber
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamed
set encoding=UTF-8
set cursorline
set termguicolors

set colorcolumn=160
highlight ColoColumn ctermbg=0 guibg=lightgrey

set showcmd
set ruler
set showmatch

let mapleader = " "

set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L

" Se valida si tiene instalado Vim-Plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif


"Get out of insert mode 
"Salir de modo insertar
" imap jk <Esc>
"imap <C-c> <Esc>l

"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/plug-config.vim
source ~/.config/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\12
  elseif has("gui_macvim")
    set guifont=menlo\ Regular_h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
"Actualizar fuente
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

"disable the arrow keys to navigate. This is very useful when you want to
"adapt to 'hjkl'
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"With the arrow keys you can resize your splits
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"save file
"guardar archivo
nmap <leader>w :w <CR>
nmap <leader>wq :wq <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q! <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree
"open nerdtree
nmap <Leader>e :NERDTree<CR>
let NERDTreeQuitOnOpen=1

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

" Navegando con guias
inoremap ;gui <++>
inoremap <leader><leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader><leader> <Esc>/<++><Enter>"_c4l
nnoremap <leader><leader><leader> <Esc>/<++><Enter>"_c4l"


" Autocompletar parentesis, llaves, corchetes, etc
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap {<CR> {<CR>}<Esc>O
" inoremap [ []<Esc>i
" inoremap < <><Esc>i 
" inoremap ' ''<Esc>i 
" inoremap " ""<Esc>i 

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

noremap Q !!$SHELL<CR>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Configuración de Temas:

"--onedark config--
"colorscheme onedark

"--gruvbox config--
colorscheme gruvbox 
let g:gruvbox_contrast_dark = "medium"

set cmdheight=1
"--tokyonight config--
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 0
"colorscheme tokyonight

" monokai config --
"let g:monokai_term_italic = 1
"let g:monokai_gui_italic = 1
" colorscheme monokai

"Close tags automatically
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"-----------------------------------------------------------------

" Busquedas personalizadas
nnoremap <leader>U <Esc>/D3134357<Enter>
