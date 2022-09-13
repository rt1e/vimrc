call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'plasticboy/vim-markdown'

"Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

"Vim support for Laravel/Lumen projects
Plug 'noahfrederick/vim-laravel'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'godlygeek/tabular'

Plug 'itchyny/lightline.vim'

Plug 'https://github.com/preservim/tagbar'

Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'ryanoasis/vim-devicons'

Plug 'shime/vim-livedown'

" Initialize plugin system
call plug#end()


colorscheme gruvbox

set background=dark
"set background=light

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
