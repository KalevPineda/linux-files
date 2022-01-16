
"Configurando el administrador de plugins vim-plug
" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
" Aquí irán los plugins a instalar
Plug 'joshdick/onedark.vim' " Tema One Dark
Plug 'scrooloose/nerdtree' "NERDTree

"Temas para Airline [Barra de Estado]
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"IdentLine [Lineas de indentación]
Plug 'Yggdroot/indentLine'

"Falcon Theme
Plug 'fenetikm/falcon'

"OneHalf Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Ayu-Vim theme
Plug 'ayu-theme/ayu-vim' " or other package manager
"Nord Theme
"Plug 'arcticicestudio/nord-vim'

"-----------------Autocompletado
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado

call plug#end()


"CONFIGURACION

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
"set expandtab  " Insertar espacios en lugar de <Tab>s

"set hidden  " Permitir cambiar de buffers sin tener que guardarlos

"set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

"set termguicolors  " Activa true colors en la terminal
"set background=light  " Fondo del tema: light o dark
"set background=dark  " Fondo del tema: light o dark
"colorscheme zellner  " Nombre del tema

"CONFIGURACION DEL TEMA
set termguicolors  " Activa true colors en la terminal
"colorscheme onedark "Activa el tema OneDark
"colorscheme falcon "Activa el tema Falcon
"colorscheme onehalflight
"colorscheme onehalfdark
"colorscheme nord

"CONFIGURACION DE AYU-VIM THEME

"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"CONFIGURACION DE NERD TREE
"let g:NERDTreeChDirMode =2 " Cambia el directorio actual al nodo padre
"map <F2>:NERDTreeToggle<CR> "Abrir/Cerrar NERDTree con F2
let mapleader=" "
nmap <Leader>nt :NERDTree<CR>
let NERDTreeQuitOnOpen=1
"CONFIGURACION DE AIRLINE
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
"Activar el soporte de falcon para airline
"let g:falcon_airline = 1
"let g:airline_theme = 'falcon'

"CONFIGURACION DE INDENTLINE
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

"CONFIGURACION DE IDENTILINE CON AYU-VIM
" IndentLine {{
"let g:indentLine_char = ''
let g:indentLine_char = 'ﮧ'
"let g:indentLine_first_char = ''
let g:indentLine_first_char = 'ﮧ'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

"COMANDOS PERSONALIZADOS
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>q :q<CR>
nmap <Leader>so :so ~/.config/nvim/init.vim<CR>

"CONFIGURACION DE AUTOCOMPLETADO - DEOPLETE

" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END







