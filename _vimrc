set nocompatible
filetype off
filetype indent off
filetype plugin off

source ~/dotfiles/_vimrc.bundle


filetype plugin on
filetype indent on

syntax on
set number

" コメント切り替え設定
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

" {{{ python 設定
" indent
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" python script 自動実行 Execute python script C-P 
function! s:ExecPy()
exe "!" . &ft . " %"
   :endfunction
	 command! Exec call <SID>ExecPy()
   	 autocmd FileType python map <silent> <C-P> :call <SID>ExecPy()<CR>

"}}}

" indent color {{{

colorscheme hybrid
" set background=dark

set tabstop=4
set shiftwidth=4
set expandtab

" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level = 2
" 自動カラーを無効にする
let g:indent_guides_auto_colors = 0
" 奇数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray

"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey

" ハイライト色の変化の幅
let g:indent_guides_color_change_percent = 30
" ガイドの幅
let g:indent_guides_guide_size = 1

" }}}

"utility {{{
" vimのヤンクとOSのクリップボードを共有する
set clipboard=unnamed,autoselect
" }}}
"
" algin setting {{{
":let g:Align_xstrlen = 3
" }}}
"
"

" basic setting
source ~/dotfiles/_vimrc.basic
" unite setting
source ~/dotfiles/.vimrc.unite
" statusline setting
source ~/dotfiles/_vimrc.statusline

