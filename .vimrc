scriptencoding utf-8
set encoding=utf-8
set nocompatible


                                    "
                                    "   [ General ]
                                    "
set number                          " Line numbers are good
set backspace=indent,eol,start      " Allow backspace in insert mode
set history=1000                    " Store lots of :cmdline history
set showcmd                         " Show incomplete cmds down the bottom
set showmode                        " Show current mode down the bottom
set bg=dark                         " Background
set t_Co=256                        " Color(s)
set gcr=a:blinkon0                  " Disable cursor blink
set visualbell                      " No sounds
set autoread                        " Reload files changed outside vim
set hidden                          " Buffers can exist in the background without being in a window.


                                    "
                                    "   [ Completion ]
                                    "
set wildmode=list:longest           "^
set wildmenu                        "^
set wildignore=*.o,*.obj,*~         "^
set wildignore+=*vim/backups*       "^
set wildignore+=*sass-cache*        "^
set wildignore+=*DS_Store*          "^
set wildignore+=vendor/rails/**     "^
set wildignore+=vendor/cache/**     "^
set wildignore+=*.gem               "^
set wildignore+=log/**              "^
set wildignore+=tmp/**              "^
set wildignore+=*.png,*.jpg,*.gif   "^


                                    "
                                    "   [ Fold ]
                                    "
set foldmethod=indent               " Fold based on indent
set foldnestmax=3                   " Deepest fold is 3 levels
set nofoldenable                    " Dont fold by default


                                    "
                                    "   [ Indentation ]
                                    "
set autoindent                      "^
set smartindent                     "^
set smarttab                        "^
set shiftwidth=4                    "^
set softtabstop=4                   "^
set tabstop=4                       "^
set expandtab                       "^
set list listchars=tab:\ \ ,trail:· "^


                                    "
                                    "   [ Scroll ]
                                    "
set scrolloff=8                     "^
set sidescrolloff=15                "^
set sidescroll=1                    "^


                                    "
                                    "   [ Swap ]
                                    "
set noswapfile                      "^
set nobackup                        "^
set nowb                            "^


                                    "
                                    "   [ Wrap ]
                                    "
set nowrap                          "^
set linebreak                       "^

filetype plugin on                  "^
filetype indent on                  "^

syntax on                           " Syntax


" Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" Plug(s)
if filereadable(expand("~/.vim/autoload/plug.vim"))
    call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    call plug#end()
endif


