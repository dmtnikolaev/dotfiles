"
" Plugins
"

call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'arcticicestudio/nord-vim'

" Keyboard switcher.
Plug 'lyokha/vim-xkbswitch'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Highlight
Plug 'justinmk/vim-syntax-extra'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}

" Easymotion
Plug 'easymotion/vim-easymotion'

" Fzf
Plug 'junegunn/fzf.vim'

" Latex
Plug 'lervag/vimtex', {'for': 'latex' }

" Surround
Plug 'tpope/vim-surround'

" Vim GPG
Plug 'jamessan/vim-gnupg'

call plug#end()

"
" Plugins config
"

" Color scheme
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:nord_underline=0
let g:nord_italic_comments=1

augroup nord-theme-overrides
  autocmd!
  autocmd ColorScheme nord highlight SpellBad gui=NONE
augroup END

colorscheme nord

" Keyboard switcher
let g:XkbSwitchEnabled=1
let g:XkbSwitchLib='/usr/lib/libxkbswitch.so'
let g:XkbSwitchIMappings=['ru']

" UltiSnips
let g:UltiSnipsSnippetDirectories=[
    \ $HOME.'/.vim/UltiSnips',
    \ $HOME.'/.vim/plugged/vim-snippets/UltiSnips'
\ ]

" Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:did_inden=0

" Fzf
let g:fzf_layout = { 'down': '~40%' }

"
" Plugins key bindings
"

" UltiSnips
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" Easymotion
map <leader><Space> <Plug>(easymotion-prefix)
nmap <Tab> <Plug>(easymotion-bd-w)

" Fzf
nnoremap <leader>r :Rg<Space>
nnoremap <leader>R :Rg <C-R>0
nnoremap <leader>/ :Buffers<CR>
