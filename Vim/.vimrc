"VIMRC

"Ustaw kodowanie znakow na utf-8
    set encoding=utf-8

"Wyswietl numer wiersza i pozostale relatywnie do niego
    set number relativenumber

"Pokaz pozycje kursora w pliku
    set ruler

"Zawijaj wiersze
    set wrap

"Wlacz kolorowanie skladni
    syntax on

"Dostosuj kolory do terminala z czarnym tlem
    set background=dark

"Ustaw motyw kolorow (:colo wyświetla obecny)
"Ciekawe: gruvbox, molokai, jellybeans, codeschool, darkspace
"Szczególnie polecane: torte, candy, guardian2
    colo candy

"Ustaw czcionke (:set guifont? wyświetla obecną)
"Ciekawe: Menlo, Monoid, Hack, InputMono
"Przy czcionce koniecznie sprawdź polskie znaki! ąęćżźółń
    set guifont=InputMono:h11

"Szukaj inkrementalnie, bez rozrozniania wielkosci znakow, ale inteligentnie i podswietl wyniki
    set incsearch
    set ignorecase
    set smartcase
    set hlsearch

"Wlacz tryb Very Magic dla wyrazen regularnych
"Natywnie vim nie posiada takiej opcji
    nnoremap / /\v
    vnoremap / /\v
    cnoremap %s/ %smagic/
    cnoremap \>s/ \>smagic/
    nnoremap :g/ :g/\v
    nnoremap :g// :g//

"Podswietlaj odpowiadajace nawiasy, kiedy kursor jest na nich
    set showmatch

"Ustawienia wciec
    set tabstop=8
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set shiftround
    set autoindent

"Pozwol na przelaczanie niezapisanych buforwo
    set hidden

"Komenda hsplit otwiera nowe okno na dole, a vsplit po prawej
    set splitbelow splitright

"Liczby z wiodacymi zerami traktuj jak dziesietne a nie osemkowe (!)
    set nrformats=

"Ustawia wiekszy bufor dla linii polecen, nie trzeba co chwila zatwierdzac enterem
    set cmdheight=2

"Pokaz znaki konca linii jako $, spacje na końcu linii jako · i tabulatory jako >---
    set list
    "set listchars=eol:$
    set listchars=trail:·,tab:>- "w trybie insert nacisnij Ctrl+k następnie . i M aby wstawić kropkę na środku o taką ·

"Wlacz autouzupelnianie
    set wildmode=longest,list,full

"Nie odswiezaj podczas wykonywania makra
    set lazyredraw

"Pokaz komendy podczas pisania
    set showcmd

"Chyba uruchamia gVim'a w zmaksymalizowanym oknie (pod Win)
    au GUIEnter * simalt ~s

"Automatycznie usun wszystkie biale znaki na koncu linii przy zapisywaniu
    autocmd BufWritePre * %s/\s\+$//e

" Zapisz z sudo
    command W w !sudo tee % > /dev/null

" Zamien tabulatory na 4 spacje
    command Tabtospaces :%s/\t/    /g

" - - - - - - - - - - - - - - - - - - - -
"Ustawienia mapowania klawiszy
"Poruszanie po liniach wyswietlanych, a nie realnych
    noremap <silent> k gk
    noremap <silent> j gj
    noremap <silent> 0 g0
    noremap <silent> $ g$

"Poruszanie pomiedzy oknami Ctrl+litera (z pominieciem Ctrl+W)
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

"Przypisanie klawiszy do kompilacji LaTeX
    map <F5> :!pdflatex % <cr>
    map <F6> :!pdflatex --quiet % <cr>
    map <F7> :w <cr> :!pdflatex Main.tex <cr>
    map <F8> :w <cr> :!pdflatex Main.tex --quiet <cr>

"Przypisanie klawiszy do kompilacji i programowania mikrokontrolera
    map <F9> :!make <cr>
    map <F10> :!make clean <cr>
    map <F11> :!make erase <cr>
    map <F12> :!make program_flash <cr>

"Przeładuj ustawienia VIM'a
    map <F4> :source $MYVIMRC <cr>
    map <S-F4> :tabe $MYVIMRC <cr>

"Smile :)
    map <F2> :smile <cr>

" Linia pod komentarzem nie jest komentarzem
    set formatoptions-=ro
    setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" - - - - - - - - - - - - - - - - - - - -
" Ustawienia pluginów
" - - - - - - - - - - - - - - - - - - - -
call plug#begin('~/.vim/plugged')
"call plug#begin('E:\Program Files (x86)\Vim\vim82\plugged')

Plug 'gu-fan/autotype.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
set laststatus=2
Plug 'terryma/vim-multiple-cursors'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'qpkorr/vim-renamer'

call plug#end()
" - - - - - - - - - - - - - - - - - - -
