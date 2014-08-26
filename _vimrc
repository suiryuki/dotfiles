set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/dotfiles/vimfiles/bundle/neobundle.vim

	call neobundle#rc(expand('~/dotfiles/vimfiles/bundle/'))
endif

" Edit {{{

" コメント処理
NeoBundle 'scrooloose/nerdcommenter.git'

" -- でメソッドチェーン整形
NeoBundle 'c9s/cascading.vim'

" visually indent guide
NeoBundle 'nathanaelkane/vim-indent-guides'

" XMLとかHTMLとかの編集機能を強化する
NeoBundle 'xmledit'

" Align : 高機能整形・桁揃えプラグイン
NeoBundle 'Align'

" フィルタリングと整形
NeoBundle 'godlygeek/tabular'

" マルチバイト対応の整形
" NeoBundle 'hlmesuke/vim-alignta'

" undo履歴を追える
NeoBundle 'Gundo'

" surround.vim テキストを括弧で囲む/削除する
" NeoBundle 'tpope/surround.vim'

" smartchr.vim ==などの前後を整形
NeoBundle 'smartchr'


"}}}

" Completion {{{
" 補完
NeoBundle 'Shougo/neocomplcache'

" python
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'kevinw/pyflakes-vim'
"NeoBundle 'nathanaelkane/vim-indent-guides'

" }}}

" Searching/Moving{{{
" smooth_scroll.vim
NeoBundle 'yuroyoro/smooth_scroll.vim'

" vim-smartword : 単語移動がスマート
NeoBundle 'smartword'

" }}}

" Programming {{{
" quickrun.vim
NeoBundle 'thinca/vim-quickrun'

" taglis
NeoBundle 'taglist.vim'
" perldoc and phpmanual
NeoBundle 'thinca/vim-ref'

" SQLUtilities : SQL整形、生成
NeoBundle 'SQLUtilities'

" pydiction : Python用の入力補完
NeoBundle 'Pydiction'
" }}}

" Syntax {{{
" haml
NeoBundle 'haml.zip'

" JavaScript
NeoBundle 'JavaScript-syntax'

" jQuery
NeoBundle 'jQuery'

" markdown
NeoBundle 'tpope/vim-markdown'

" coffee script
NeoBundle 'kchmck/vim-coffee-script'

" python
NeoBundle 'yuroyoro/vim-python'

" }}}

" Encording {{{
NeoBundle 'banyan/recognize_charcode.vim'
" }}}

" Utility {{{
" vimのshell
NeoBundle 'Shougo/vimshell.git'
" powerline
NeoBundle 'Lokaltog/vim-powerline'
"  }}}

" ColorSchema{{{
 " color schema 256
NeoBundle 'desert256.vim'
NeoBundle 'mrkn256.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'yuroyoro/yuroyoro256.vim'
" }}}

" Unite {{{

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {
\ 'build': {
\ 'windows': 'make -f make_mingw32.mak',
\ 'cygwin': 'make -f make_cygwin.mak',
\ 'mac': 'make -f make_mac.mak',
\ 'unix': 'make -f make_unix.mak',
\ }
\}
NeoBundle 'tsukkee/unite-help'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Shougo/neomru.vim'
  " NeoBundle 'Sixeight/unite-grep'
NeoBundle 'basyura/unite-rails'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'choplin/unite-vim_hacks'
" }}}
"
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

colorscheme desert256
" set background=dark

set tabstop=4
set shiftwidth=4
set expandtab

" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1
" ガイドをスタートするインデントの量
" let g:indent_guides_start_level = 2
" 自動カラーを無効にする
" let g:indent_guides_auto_colors = 0
" 奇数インデントのカラー
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray

"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey

" ハイライト色の変化の幅
" let g:indent_guides_color_change_percent = 30
" ガイドの幅
" let g:indent_guides_guide_size = 1

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

