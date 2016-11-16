" File: note.vim
" Author: Kenneth Benzie (Benie) <k.benzie83@gmail.com>

function note#list(ArgLead, CmdLine, CursorPos)
  " TODO: This currently won't work on Windows. Find out if there is a vim
  " function we can use to avoid calling out to system utilities?
  return system('ls '.g:note_directory)
endfunction

function! note#open(file)
  execute 'edit '.g:note_directory.'/'.a:file
  execute 'setfiletype '.g:note_filetype
endfunction
