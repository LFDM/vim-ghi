function! ghi#load_additional_highlighting()
  syn match ghi_keyword '^@ghi-.*@'

  syn match ghi_title_kw '^@ghi-title@ '        contains=ghi_title
  syn match ghi_head_kw '^@ghi-head@ '          contains=ghi_head
  syn match ghi_base_kw '^@ghi-base@ '          contains=ghi_base

  syn match ghi_title ' .*' contained
  syn match ghi_head  ' .*' contained
  syn match ghi_base  ' .*' contained

  syn match ghi_ignore '^#|#.*'

  syn match ghi_user             '\v(\s|\n)\@\w+>-@!'
  syn match ghi_reference        '\v#\d+>'
  syn match ghi_cross_reference  '\v<\w+/\w+#\d+>'
  syn match ghi_commit           '\v<[a-f0-9]{40}>'
  syn match ghi_cross_commit     '\v<\w+/\w+\@[a-f0-9]{40}>'


  hi ghi_title term=bold cterm=bold gui=bold

  hi def link ghi_ignore             Comment

  hi def link ghi_keyword            Constant
  hi def link ghi_title_kw           ghi_keyword
  hi def link ghi_head_kw            ghi_keyword
  hi def link ghi_base_kw            ghi_keyword

  hi def link ghi_head               Function
  hi def link ghi_base               Function

  hi def link ghi_user               ghi_title
  hi def link ghi_reference          SpecialKey
  hi def link ghi_cross_reference    ghi_reference
  hi def link ghi_commit             NonText
  hi def link ghi_cross_commit       ghi_commit
endfunction

