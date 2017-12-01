
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'gioele/vim-autoswap'
Plug 'joonty/vdebug'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'} " wymagany przez 'tsuquyomi'
"Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} "fajne, ale TODO 
Plug 'Quramy/tsuquyomi'
Plug 'jason0x43/vim-js-indent'
Plug 'ap/vim-buftabline'
"Plug 'vim-airline/vim-airline' " dziala, ale te informacje wyswietlane malo przydatne
    "slabo sobie radzi z podzielonym ekranem, trzeba czcionki dociagnac
"Plug 'vim-airline/vim-airline-themes'
"Plug 'honza/vim-snippets'
"Plug 'mileszs/ack.vim' " fajne ale TODO instalacja niedokonczona
"Plug 'scrooloose/syntastic'
"Plug 'davidhalter/jedi-vim'
"Plug 'scrooloose/nerdtree'
"Plug 'Nopik/vim-nerdtree-direnter'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'posva/vim-vue'
"Plug 'SirVer/ultisnips'
"Plug 'hdima/python-syntax' " TODO
"Plug 'Valloric/YouCompleteMe' " TODO skonfiguruj
"Plug 'terryma/vim-expand-region' " mysle ze to slabe
"Plug 'bkad/CamelCaseMotion' " wylaczony

call plug#end()

"filetype plugin indent on "TODO co to jest

" dzieki tej opcji, skrot: <C-x><C-o> przeszukuje ... <nwm co> i podpowiada
set omnifunc=syntaxcomplete#Complete

set autochdir
set autoread
set backspace=indent,eol,start
set cmdheight=1
"set colorcolumn=80
set cul
set cursorline
set encoding=utf8
set expandtab
set ffs=unix,dos,mac
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set lazyredraw
set lbr
set linebreak
set list
set listchars=tab:>~,nbsp:_,
set magic
set mat=1
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowb
set number
set ruler
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set so=3 " Set 5 lines to the cursor - when moving vertically using j/k
set softtabstop=4
set splitright
set tabstop=4
set tm=500
set t_vb=
set whichwrap+=<,>,h,l
set wildignore=*.o,*~,*.pyc,__pycache__/*,__init__.py,*.db,*.crt
set wildignore+=*.pdf,node_modules/*,bower_components/*
set wildmenu
"set tw=140 "TODO co to jest?
"set breakat=40
"tych dwoch lepiej nie wlaczac bo psuja wciecia
"set ai "Auto indent
"set si "Smart indent
"set cident

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" NerdCommenter -------------------------------------------------------
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Use deoplete.
"let g:deoplete#enable_at_startup = 1

" space-c komentuje/odkomentowuje linijke/zaznaczenie
nmap <space>c <plug>NERDCommenterToggle
vmap <space>c <plug>NERDCommenterToggle

" Auto-Pairs  ----------------------------------------------------
"let g:AutoPairsFlyMode = 1

" EasyMotion -----------------------------------------------------
" change the default EasyMotion shading to something more readable with Solarized
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" inne prefixy nie dzialaja tak dobrze jak ten
map \ <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map <Leader>f <Plug>(easymotiono-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" UltiSnips ------------------------------------------------------
"TODO
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"-----------------------------------------------------------------

" Python Syntax --------------------------------------------------
"TODO ustalenie ladnych kolorow, na koncu vimrc odkomentuj 'syntax on'
"let python_version_2 = 1
"let python_highlight_all = 0
"-----------------------------------------------------------------
" Quramy/tsuquyomi plugin
" podpowiadanie sygnatur funkcji
let g:tsuquyomi_completion_detail = 1

" Allow to use Ctrl-s/q keybinds, restore default behaviour when leaving Vim
"silent !stty -ixon
"autocmd VimLeave * silent !stty ixon

" prevent escape from moving the cursor one character to the left
inoremap <silent> <Esc> <Esc>`^

let mapleader = "\<space>"
let g:mapleader = "\<space>"

nnoremap <silent> <leader>vr :e $MYVIMRC<CR>
nnoremap <leader>; :w<cr>

" zeby 'u' - undo nie cofalo zbyt duzo zmian 
" (wszystko co wprowadzilem w insert mode) - oznaczam checkpointy:
inoremap . .<c-g>u
inoremap , ,<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u
inoremap ; ;<c-g>u
inoremap [ [<c-g>u
inoremap ( (<c-g>u
inoremap < <<c-g>u
inoremap { {<c-g>u

" Useful mappings for managing tabs >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" ale ja w tabach wyswietlam bufory, dzieki pluginowi vim-buftabline

function! CloseProperly(save)
   if a:save
      exec 'w'
   endif

   if len(filter(range(bufnr('$')), 'buflisted(v:val)'))
      exec 'bdelete!'
   else
      exec 'quit!'
   endif
endfunction

" otworz plik w nowym oknie
nnoremap <leader>tnn :e<space>
" otworz nowe okno
nnoremap <leader>tn :enew<cr>
" otworz plik w splicie
nnoremap <leader>ss :vnew<space>
" otworz nowy pusty split
nnoremap <leader>s :vnew<cr>

nnoremap ZZ :call CloseProperly(1)<cr>
nnoremap ZQ :call CloseProperly(0)<cr>

" podmien plik w obecnym oknie
nnoremap <leader>tt :bd\|e<space>
" jw. ale podmieniamy tylko split
nnoremap <leader>tts :bd\|vnew<space>
" jw. ale podmieniamy split na pusty
nnoremap <leader>ttn :bd\|vnew<cr>

nnoremap <C-h> :bprev<cr>
nnoremap <C-j> :bnext<cr>

let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
"let g:buftabline_separator = 1

nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" przecinek cycluje po split'ach
nnoremap , <c-w>w

" zawsze gdy wklejamy tekst, powinnismy najpierw ustawic :set paste
" a gdy wkleimy wylaczyc
" Toggle paste mode on and off
" TODO  mozna to poprawic by sie wyswietlalo info czy mam paste set czy nie
map <leader>pp :setlocal paste!<cr>
"map <F10> :set invpaste<CR> " to chyba tak samo dziala


" For when you forget to sudo.. Really Write the file.
cmap x!! w !sudo tee % >/dev/null
" czyli edytujac plik bez sudo, zeby go zapisac wpisz :x!!

"TODO nie dziala:
"autocmd filetype *.py, *.cpp inoremap __ ____<esc>hi

"TODO nie dziala, :help new-filetype
"au! BufRead,BufNewFile *.ts      setfiletype javascript
"autocmd FileType ts :setfiletype javascript

" move cursor to the top/bottom of the screen
" normalnie sluzylo jako chodzenie po tabach, ale mam c-h/j
nnoremap gt H
nnoremap gb L

" nie zrob tutaj '-nore-' bo 'dh' nie zadziala tak jak 'd^' !!!
map h g^
"map <C-h> g0 "zajete juz do chodzenia po zakladkach
map H g$
vmap H g_
nnoremap <CR> G
nnoremap <BS> gg
nnoremap L >>
vnoremap L >>

" U - cofa zmiany dla calej linii, rzadko przydatne, <c-r> dziala lepiej
nnoremap U <c-r> 
nnoremap <c-r> U

"TODO usuwanie spacji z abbrev console.log
"func! EatchaR(pat)
"    let c = nr2char(getchar(0))
"    return ( c =~ a:pat) ? '' : c
"endfunc
"iabbr cl console.log();<esc><Left>i<esc><C-R>=EatchaR('\s')<CR>i
"iabbr cl console.log();<esc>F%s<c-o>:call getchar()<CR>i
iabbr cl console.log();<esc><Left>

" hjkl -> jkl;
" Treat long lines as break lines (useful when moving around in them)
noremap j h
noremap k gj
noremap l gk
noremap ; l

" f{char} -znajduje {char} w linii, $ -znajdz next, ^ -znajdz prev
" niepotrzebne poki mam easymotion, a $ przyda sie do dlugich linijek
"noremap $ ,
"noremap ^ ;

nnoremap <C-a> iTODO<space>
inoremap <C-a> TODO<space>

" TODO gryzie sie z surround-vim
" zamien wystapienie ciagu na inny ciag uzywajac cs
" n.n.n. -przejscie do kolejnego wystapienia i zamiana
vnoremap <silent> q //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap q :normal vq<CR>

" aby 'Y' zachowywalo sie tj. D, C, itp.
nnoremap Y y$

" ponadto nie chce aby 'x' czy 'X' ladowalo do schowka
" cala linie mozesz usunac: Vx - nie zostanie zaladowana do schowka
nnoremap <silent> x "_x
vnoremap <silent> x "_x
nnoremap <silent> X "_X
vnoremap <silent> X "_X

" cp kopiuje caly paragraf i wkleja go pod ten skopiowany
noremap cp yap<S-}>p

"plugin segregujacy pluginy w katalogu ~/.vim/bundle
"np. cd ~/.vim/bundle &&  git clone git://github.com/tpope/vim-sensible.git
"execute pathogen#infect() " sypie bledem, a i tak teraz vundle mam

" Disable highlight when <leader>/ is pressed
nnoremap <silent> <leader>/ :noh<cr>

"let NERDTreeMapOpenInTab='<Enter>'
"nnoremap <leader><cr> :NERDTreeToggle<CR>

" wlasciwe poruszanie sie po slowach w camel case
" jesli chcesz usunac cale slowo, nie-camelcase, to zrob dW
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"map <silent> ge <Plug>CamelCaseMotion_ge
"sunmap w
"sunmap b
"sunmap e
"sunmap ge
"omap <silent> iw <Plug>CamelCaseMotion_iw
"xmap <silent> iw <Plug>CamelCaseMotion_iw
"omap <silent> ib <Plug>CamelCaseMotion_ib
"xmap <silent> ib <Plug>CamelCaseMotion_ib
"omap <silent> ie <Plug>CamelCaseMotion_ie
"xmap <silent> ie <Plug>CamelCaseMotion_ie

set termguicolors
set background=dark
colorscheme default
syntax enable
syntax on

"http://vimdoc.sourceforge.net/htmldoc/syntax.html
"highlight group -w tym rozdziale sa wszystkie typy highlight opisane
" cterm moze przyjac wartosci: none, bold, underscore
"hi Cursor term=bold cterm=bold guibg=Red guifg=Red " nie dziala
hi Normal term=none cterm=none guibg=none guifg=Blue
hi CursorLine term=none cterm=none guibg=Black
hi Comment term=none cterm=none guibg=none guifg=DarkGray
hi Constant term=none cterm=none guibg=none guifg=Magenta
hi Identifier term=none cterm=none guibg=none guifg=Purple
"hi Statement term=none cterm=none guibg=DarkYellow
"hi PreProc term=none cterm=none guibg=LightGreen
"hi Type term=none cterm=none guibg=DarkGreen
hi Special term=none cterm=none guibg=none guifg=Yellow 
hi Todo term=none cterm=none guibg=none guifg=Yellow
"hi Underlined term=none cterm=none guibg=White
"hi Error term=none cterm=none guibg=White
hi MatchParen term=none cterm=none guibg=none guifg=Yellow
hi Visual term=none cterm=none guibg=Black
" kolorowanie menu pokazujacego sie po uzyciu <ctrl>n/p
hi Pmenu term=none cterm=none guibg=Black guifg=Red
hi PmenuSel term=none cterm=none guibg=Yellow guifg=Red
hi PmenuSbar term=none cterm=none guibg=DarkGrey
hi PmenuThumb term=none cterm=none guibg=DarkBlue

hi BufTabLineCurrent term=none cterm=none guibg=Yellow guifg=Red
hi BufTabLineActive term=none cterm=none guibg=Blue guifg=Yellow
hi BufTabLineHidden term=none cterm=none guibg=White guifg=Black
hi BufTabLineFill term=none cterm=none guibg=Black guifg=none

" TODO obczaj: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Y>'

" wylaczam Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_chect_on_wq = 0
"let g:syntastic_enable_signs = 1

" konfiguracja plugin'u jedi-vim - autouzupelnianie dla python'a
"let g:jedi#use_tabs_not_buffers = 1
"konflikt byl dla <leader>d \/ \/ \/
"let g:jedi#goto_command = "<leader>G" 
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * y/<C-R>"<CR>N
vnoremap <silent> # y?<C-R>"<CR>N

nnoremap * *N
nnoremap # #N

" <leader>U in insert/normal mode, to uppercase the word under cursor
vnoremap <leader>u <esc>viwUea
nnoremap <leader>u viwUe

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" youtube: How to do 90% of what plugins do
" do szybkiego szukania plikow w biezacym katalogu
"set path+=**

" tworzenie plikow z tagami do szybkiego wyszukiwania miejsca definicji np. funkcji
command! MakeTags !ctags -R .
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"nnoremap gf :vertical wincmd f<CR>

"szybkie poruszanie sie po split'ach - alt+a/s/d/f
" w neovim mogloby sie przydac, wtedy zastapiloby tmuxa
" nie dziala mapowanie alt
" TODO alt nie dziala
"nnoremap <M-a> <C-W>h
"nnoremap <M-s> <C-W>k
"nnoremap <M-d> <C-W>j
"nnoremap <M-f> <C-W>l

" po wklejeniu kilku linijek ze schowka, kursor znajdzie sie za nimi, i mozesz
" od razu powielac(wklejac) ponownie te linie
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Move a line of text using ctrl+[kl]
nnoremap <C-k> mz:m+<cr>`z
nnoremap <C-l> mz:m-2<cr>`z
vnoremap <C-k> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <C-l> :m'<-2<cr>`>my`<mzgv`yo`z

" n/N podswietla wystapienie na ktore sie przenosisz
nnoremap <silent> n n:call HLNext(0.1)<cr>
nnoremap <silent> N N:call HLNext(0.1)<cr>

"kod z gist.github: vim cursor color change in TMUX TODO
"cursor to yellow on insert mode
"blue on command/other mode
"if exists("$TMUX")
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\033]Pl3971ED\033\\"
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\033]PlFBA922\033\\"
"    silent !echo -ne "\<Esc>Ptmux;\<Esc>\033]Pl3971ED\033\\"
"    autocmd VimLeave * silent !echo -ne "\<Esc>Ptmux;\<Esc>\033\\"
"else
"    let &t_EI = "\033]Pl3971ED\033\\"
"    let &t_SI = "\033]PlFBA922\033\\"
"    silent !echo -ne "\033]Pl3971ED\033\\"
"    autocmd VimLeave * silent !echo -ne "\033]Pl3971ED\033\\"
"endif

function! HLNext(blinktime)
    hi WhiteOnRed ctermfg=red ctermbg=white
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#'.@/
    let blinks = 2
    for n in range(1,blinks)
        let red = matchadd('WhiteOnRed', target_pat, 101)
        redraw
        exec 'sleep ' . float2nr(a:blinktime / (2*blinks) * 1000) . 'm'
        call matchdelete(red)
        redraw
        exec 'sleep ' . float2nr(a:blinktime / (2*blinks) * 1000) . 'm'
    endfor
endfunction

" kolorowanie vimdiff TODO ustaw odpowiednie kolory
augroup PatchDiffHighlight
    autocmd!
    autocmd BufEnter *.patch,*.rej,*.diff   syntax enable
augroup END

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
" Remember info about open buffers on close
set viminfo^=%

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
exe "normal mz"
%s/\s\+$//ge
exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
" aby kopiowanie w VIMie uzywalo systemowego schowka
" nie uzywac - po uzyciu skrotow takich jak: dfs, diw nie da sie wkleic
" function! ClipboardYank()
"     call system('xclip -i -selection clipboard', @@)
" endfunction
" function! ClipboardPaste()
"     let @@ = system('xclip -o -selection clipboard')
" endfunction

"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>p
"onoremap <silent> y y:call ClipboardYank()<cr>
"onoremap <silent> d d:call ClipboardYank()<cr>
"ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

"nwm co to 
"nmap \o :set paste!<CR>

" Close the current buffer
"map <leader>bd :Bclose<cr>

" Close all the buffers
"map <leader>ba :1,1000 bd!<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
"map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
"map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
"map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
"map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>

" Pressing ,ss will toggle and untoggle spell checking
"map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader> for spellchecking
"map <leader>sn ]s
"map <leader>sp [s
"map <leader>sa zg
"map <leader>s? z=

" Remove the Windows ^M - when the encodings gets messed up
"noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"Don't close window, when deleting a buffer
" command! Bclose call <SID>BufcloseCloseIt()
" function! <SID>BufcloseCloseIt()
"    let l:currentBufNum = bufnr("%")
"    let l:alternateBufNum = bufnr("#")
"
"    if buflisted(l:alternateBufNum)
"      buffer #
"    else
"      bnext
"    endif
"
"    if bufnr("%") == l:currentBufNum
"      new
"    endif
"
"    if buflisted(l:currentBufNum)
"      execute("bdelete! ".l:currentBufNum)
"    endif
" endfunction
