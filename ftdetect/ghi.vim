au BufNewFile,BufRead *.ghi
      \ setf markdown |
      \ call ghi#load_additional_highlighting()

au BufNewFile,BufRead GHI*.diff call ghi#create_diff_mappings()
