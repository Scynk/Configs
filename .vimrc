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

"Ustaw motyw kolorow
    "colo gruvbox

"Dostosuj kolory do terminala z czarnym tlem
    set background=dark

"Ustaw czcionke
    "set guifont=Menlo

"Szukaj inkrementalnie, bez rozrozniania wielkosci znakow, inteligentnie i podswietl wyniki
    set incsearch
    set ignorecase
    set smartcase
    set hlsearch

"Wlacz tryb Magic dla wyrazen regularnych
    set magic

"Podswietlaj odpowiadajace nawiasy, kiedy kursor jest na nich
    set showmatch

"Ustawienia wciec
    set tabstop=8
    set shiftwidth=4
    set shiftround
    set autoindent

"Pozwol na przelaczanie niezapisanych buforwo
    set hidden

"Komenda split otwiera nowe okno na dole lub po prawej
    set splitbelow splitright

"Liczby z wiodacymi zerami traktuj jak dziesietne a nie osemkowe (!)
    set nrformats=

"Ustawia wiekszy bufor dla linii polecen, nie trzeba co chwila zatwierdzac enterem
    set cmdheight=2

"Pokaz znaki konca linii i tabulatory jako >---
    set list
    set listchars=eol:$,tab:>-

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
    map <F7> :!pdflatex Main.tex <cr>
    map <F8> :!pdflatex Main.tex --quiet <cr>

"Przypisanie klawiszy do kompilacji i programowania mikrokontrolera
    map <F9> :!make <cr>
    map <F10> :!make clean <cr>
    map <F11> :!make erase <cr>
    map <F12> :!make program_flash <cr>

