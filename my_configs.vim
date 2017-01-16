 " Ctrl-P plugin
 nmap ; :CtrlPBuffer<CR>
 let g:ctrlp_map = '<Leader>t'
 let g:ctrlp_match_window_bottom = 0
 let g:ctrlp_match_window_reversed = 0
 let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
 let g:ctrlp_working_path_mode = 0
 let g:ctrlp_dotfiles = 0
 let g:ctrlp_switch_buffer = 0

 " Move between split windows
 nmap <C-h> <C-w>h
 nmap <C-l> <C-w>l
 nmap <C-j> <C-w>j
 nmap <C-k> <C-w>k
 
set paste
set tw=79


 " Toggles nerd tree
nmap \e :NERDTreeToggle<CR>

 " Support 256 colors
 if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
     set t_Co=256
 endif

 "Python syntax checkers
 " let g:syntastic_python_checkers = ['pylint', 'pyflakes']
 let g:syntastic_python_checkers = ['pyflakes', 'mypy']
 let g:syntastic_javascript_checkers = ['eslint']
 let g:syntastic_python_mypy_args = '--strict-optional'

 "highlight empty spaces
 highlight WhitespaceEOL ctermbg=red guibg=red
 match WhitespaceEOL /\s\+$/

 autocmd BufWritePre *.py %s/\s\+$//e

 set nu
