if has('vim_starting')
  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'rking/ag.vim'                                  " search
NeoBundle 'vim-airline/vim-airline'                         " statusline
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'Shougo/unite.vim'                          " completion window
NeoBundle 'Shougo/unite-outline'
NeoBundleLazy 'tsukkee/unite-tag', {'autoload':{'unite_sources':['tag','tag/file']}}
"NeoBundle 'scrooloose/syntastic'                   " syntax check on buffer save
NeoBundle 'tomtom/tlib_vim'             " VimL utility functions
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'                      " git
"NeoBundleLazy 'tpope/vim-markdown', {'autoload':{'filetypes':['markdown', 'md']}}
NeoBundle 'tpope/vim-repeat'
NeoBundle 'airblade/vim-rooter'         " sets current working directory based on project files (vcs, rakefile, etc)

NeoBundle 'airblade/vim-rooter'         " sets current working directory based on project files (vcs, rakefile, etc)
NeoBundleLazy 'godlygeek/tabular', {'autoload':{'commands':'Tabularize'}}
NeoBundle 'majutsushi/tagbar'
NeoBundle 'ervandew/supertab'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'tpope/vim-git', {'autoload':{'filetypes':['gitcommit','gitconfig', 'gitrebase', 'gitsendmail']}}

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}

NeoBundle 'fatih/vim-go'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" ******************** plugin settings *****************
" enable powerline fonts
let g:airline_powerline_fonts = 1

" deoplete (neovim auto-complete)
let g:deoplete#enable_at_startup = 1

" vim-go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" *************** nvim settings *********************
set clipboard+=unnamedplus "always use clipboard

set number
syntax on                                       " Enable syntax highlighting
filetype plugin indent on       " Enable filetype-specific indenting and plugins

set autoread                            " Automatically read file when changed outside Vim
set history=100                         " Keep 100 lines of command line history
set viminfo^=%                          " Remember info about open buffers on close
set ttyfast                                     " this is the 21st century, people
set noesckeys                           " disable recognition of keys sending an escape sequence when in insert mode
set nrformats-=octal            "always assume decimal numbers
set nocompatible
set mouse=a

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

set display+=lastline
set nostartofline       " Do not jump to first character with page commands.
