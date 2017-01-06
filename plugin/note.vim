" File: note.vim
" Author: Kenneth Benzie (Benie) <k.benzie83@gmail.com>

command! -nargs=1 -complete=custom,note#list Note :call note#open(<f-args>)

let g:note_directory = get(g:, 'note_directory', '~')
let g:note_filetype = get(g:, 'note_filetype', 'markdown')
