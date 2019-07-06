Plugin 'rking/ag.vim'
"search from the project root instead of cwd
"let g:ag_working_path_mode="r"

"start a search query by pressing \
nnoremap \  :Ag!<space>

"search for word under cursor by pressing |
nnoremap \| :Ag! "\b<C-R><C-W>\b"<cr>:cw<cr>
