au BufNewFile,BufRead *.ghi
      \ setf markdown |
      \ call ghi#load_additional_highlighting()
