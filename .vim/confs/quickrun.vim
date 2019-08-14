Bundle 'thinca/vim-quickrun'
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_config['plantuml'] = {
\  'command': 'plantuml'
\, 'exec': ['%c %s', 'open %s:p:r.png']
\, 'outputter': 'null'
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>
