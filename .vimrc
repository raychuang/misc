"----------------------------------------------------------------------
"@file .vimrc
"@Synopsis vim configure
"@author Ray chuang
"@version 1.1
"@date 2011-08-04
"----------------------------------------------------------------------
set nocompatible
"set chinese help
set helplang=cn
"set enconding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

"Enable syntax highlight
syntax enable
syntax on
"Show line number
set nu
"show matching bracets
set showmatch

"Basic editing options
set expandtab
set shiftwidth=4

au FileType html,python,vim,javascript,ruby setl shiftwidth=2
au FileType html,python,vim,javascript,ruby setl tabstop=2
au FileType java,php,erlang setl shiftwidth=4
au FileType java,php,erlang setl tabstop=4
filetype plugin on

set smarttab
set lbr
set tw=0

"Auto indent
set ai

"Smart indent
set si

"C-style indeting
set cindent

"Wrap lines
set wrap

"set color scheme
colorscheme desertME

"sets how many lines of history VIM har to remember

set history=400

" Set to auto read when a file is changed from the outside

set autoread

" Have the mouse enabled all the time:
set mouse=n

" Set
set ve=all
"
" Do not redraw, when running macros.. lazyredraw
"
set lz
"
" set 7 lines to the curors - when moving vertical.. 光标居中设置
"
"set so=1010101010101010
"
" The commandbar is 2 high
"
set cmdheight=2
"
"
" Change buffer - without saving
"
set hid
"
"
" Ignore case when searching
set ignorecase
"
set incsearch
"
" Set magic on
set magic
"
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
"
" How many tenths of a second to blink
set mat=4

" Highlight search things
"
set hlsearch
"
" Turn backup off
set nobackup
set nowb
set noswapfile
"
" smart backspace
set backspace=start,indent,eol
"
" switch buffers with Tab
"

"============================BASIC Option END===================================
"

"============================KEY MAP Begin======================================
"
"在不同窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader=","

map <S-Tab> :bn<CR>
map <F7> :tabprev<CR>
map <F8> :tabnext<CR>
" tab config
map tn :tabnext<CR>
map tp :tabprev<CR>
map te :tabnew
map tc :tabclose<CR>


"let g:dumbbuf_hotkey='<F2>'
map <F6> :DoxAuthor<CR>
map <F3> :Ack-Grep<CR>
"Paste toggle - when pasting something in, don't indent.
"set pastetoggle=<F4>
map <F5> :set mouse=<CR>
map <F9> :CommandT<CR>
map <F11> :NERDTreeToggle<CR>
map <F12> :TlistToggle<CR>

"============================KEY MAP END===================================
"

"============================Plugin Option Begin===========================
"
set tags=tags;

let g:ackprg="ack-grep _H --nocolor --nogroup --column"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Use_Right_Window = 1
let g:CommandTMaxHeight=20

let php_folding = 2
set foldlevel=1

let b:javascript_fold = 2

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Ray chuang"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "2144.cn\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:user_zen_settings = {
 \  'indentation' : '  ',
 \  'perl' : {
 \    'aliases' : {
 \      'req' : 'require ',
 \    },
 \   },
 \  'php' : {
 \    'extends' : 'html ',
 \    'filters' : 'html,c ',
 \    },
 \  'css' : {
 \    'filters' : 'fc ',
 \    },
 \  'javascript': {
 \    'snippets':{
 \      'jq' : "$(function() {\n\t${cursor}${child}\n}); ",
 \      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n}); ",
 \      'fn' : "(function() {\n\t${cursor}\n})(); ",
 \      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100); ",
 \       },
 \    },
 \}
let g:user_zen_expandabbr_key = '<c-e>'    "设置为ctrl+e展开
let g:use_zen_complete_tag = 1
"============================Plugin Option END==============================
"for debug
set swapsync=
set nofsync

" autoload _vimrc
autocmd! bufwritepost _vimrc source %
"status bar from hacking vim
set ls=2
set statusline=%F\ \ \ \ \ TYPE=%y\ \ \ \ \ \ Buf:\ #%n\ \ \ \ Line:\ %01l/%L[%p%%]\ \ Col:\ %01v
highlight StatusLine term=bold,reverse cterm=bold,reverse

"set tabnew for all open files
tab all

"使PHP识别EOT字符串
hi link phpheredoc string
"显示TAB键
set list
set listchars=tab:>-,trail:-
