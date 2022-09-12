call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

"Plug 'valloric/youcompleteme'

Plug 'neoclide/coc.nvim'

Plug 'plasticboy/vim-markdown'

" Make sure you use single quotes

Plug 'kevinhui/vim-docker-tools'

Plug 'vim-scripts/bash-support.vim'

"Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

"triangular_ruler: Sublime Text color scheme ready for next generation JavaScript syntax
Plug 'voronianski/oceanic-next-color-scheme'

Plug 'erichdongubler/vim-sublime-monokai'

Plug 'joshdick/onedark.vim'

"Vim support for Laravel/Lumen projects
Plug 'noahfrederick/vim-laravel'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'jeetsukumaran/vim-pythonsense'

Plug 'vimjas/vim-python-pep8-indent'

"Markdown
Plug 'godlygeek/tabular'

Plug 'itchyny/lightline.vim'

Plug 'https://github.com/preservim/tagbar'

Plug 'https://github.com/universal-ctags/ctags'

Plug 'https://github.com/airblade/vim-gitgutter'

"NerdTree plugins

Plug 'ryanoasis/vim-devicons'

Plug 'shime/vim-livedown'

" Initialize plugin system
call plug#end()


colorscheme gruvbox

set background=dark
"set background=light


augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

set encoding=utf-8

set number

set laststatus=2

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
