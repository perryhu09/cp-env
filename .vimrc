:filetype on
:syntax on
:set ruler
:set tabstop=4
:set shiftwidth=4
"this option will disable Makefile
"which depends on tabs to work
:set expandtab "to enter a real tab character use Ctrl-V<Tab> key sequence
:set nu
:set autoindent
":set cindent
":set smartindent
:inoremap {<CR>  {<CR>}<ESC>O<Tab>
:set hlsearch
:set incsearch
:set autoread
:set cursorline
:set autoread
:set autowrite
:set backupdir=./.backup,/tmp
:set directory=./.backup,/tmp
:set laststatus=2
":set so=999 "scrolloff option to keep cursor in the middle
"show tab characters, useful for Makefile coding
:set list
:set listchars=tab:\|\
":colorscheme gruvbox
:set guifont=Monaco:h18

"gvim
:set go-=m "remove menu bar
:set go-=T "remove tool bar
:set go-=r "remove right-hand scroll bar

:map <F1> <ESC>
:imap <F1> <ESC>

"F1
"F2
"F3 
"F4

"F5 Load C++ Template (make sure to specify right path on your PC)
autocmd FileType cpp noremap <F5> gg:r ~/comp_prog/templates/template.cpp<CR>
autocmd FileType cpp inoremap <F5> gg:r ~/comp_prog/templates/template.cpp<CR>

"F6

"F7 compile without running
autocmd FileType cpp noremap <F7> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % <CR>
autocmd FileType cpp inoremap <F7> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % <CR>

"F8 compile and run without warning flags from inp file
autocmd FileType cpp noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
autocmd FileType cpp inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>

"F9 compile and run without inp
autocmd FileType cpp noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
autocmd FileType cpp inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>

"compile with clang
"autocmd FileType cpp noremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
"autocmd FileType cpp inoremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <inp<CR>

"F10 compile and run with input from inp
autocmd FileType cpp noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
autocmd FileType cpp inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <inp<CR>

"F11
"F12

:set textwidth=120
:set tags=~/tags,./tags

"For a taglist pluggin
":let Tlist_Auto_Open = 0
":let Tlist_Display_Prototype = 0
":let Tlist_Exit_OnlyWindow = 1
":let Tlist_File_Fold_Auto_Close = 1
":let Tlist_Process_File_Always = 1
":let Tlist_Use_Right_Window = 0
":let Tlist_WinWidth = 25
":let Tlist_Enable_Fold_Column = 0
":let Tlist_Compact_Format = 1

":so $HOME/.vim/scripts/highlight_cur_word.vim

function ShowSpaces(...)
	let @/="\\v(\\s+$)|( +\\ze\\t)"
	let oldhlsearch=&hlsearch
	if !a:0
		let &hlsearch=!&hlsearch
	else
		let &hlsearch=a:1
	end
	return oldhlsearch
endfunction

function TrimSpaces() range
	let oldhlsearch=ShowSpaces(1)
	execute a:firstline.",".a:lastline."substitute ///gec"
	let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F12>     :ShowSpaces 1<CR>
nnoremap <S-F12>   m`:TrimSpaces<CR>``
vnoremap <S-F12>   :TrimSpaces<CR>

map _F ma[[k"xyy`a:echo @x<CR>

:map \g <ESC>o<ESC>i/*----------------------------------------------------------<ESC>o-----------------------------------------------------------*/<ESC>O

:map \g1 <ESC>o<ESC>i    /*------------------------------------------------------<ESC>o------------------------------------------------------*/<ESC>O

:map \g2 <ESC>o<ESC>i        /*--------------------------------------------------<ESC>o--------------------------------------------------*/<ESC>O

:map \g3 <ESC>o<ESC>i            /*----------------------------------------------<ESC>o----------------------------------------------*/<ESC>O

:map \g4 <ESC>o<ESC>i                /*------------------------------------------<ESC>o------------------------------------------*/<ESC>O

:map \g5 <ESC>o<ESC>i                    /*--------------------------------------<ESC>o--------------------------------------*/<ESC>O

:map \g6 <ESC>o<ESC>i                        /*-----------------------------------<ESC>o-----------------------------------*/<ESC>O

" C++ //-comment to C /*-comment-*/
:map \c :%s://\(.*\):/*\1 */:<CR>
"
" " C /*-single-line-*/ to C++ //-comment
":map \C :%s:/\*\(.\{-\}\)\s*\*/://\1:<CR>

"maximize window and return to the previous split structure
"nnoremap <C-W>O :call MaximizeToggle ()<CR>
"nnoremap <C-W>o :call MaximizeToggle ()<CR>
"nnoremap <C-W><C-O> :call MaximizeToggle ()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

"moving split windows easier
:map <C-J> <C-W>j
:map <C-K> <C-W>k
:map <C-H> <C-W>h
:map <C-L> <C-W>l
:map <C-O> <C-W>o
":map <F7> <C-W>w
":map <F4> <C-W>o

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
