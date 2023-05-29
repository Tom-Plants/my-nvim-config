function AccentDemo()
  --[[
  vim.fn['airline#parts#define_accent']('a', 'red')
  vim.fn['airline#parts#define_accent']('b', 'green')
  vim.fn['airline#parts#define_accent']('c', 'blue')
  vim.fn['airline#parts#define_accent']('d', 'yellow')
  vim.fn['airline#parts#define_accent']('e', 'orange')
  vim.fn['airline#parts#define_accent']('f', 'purple')
  vim.fn['airline#parts#define_accent']('g', 'bold')
  vim.fn['airline#parts#define_accent']('h', 'italic')
  ]]--
  --vim.g.airline_section_a = vim.fn['airline#section#create']({'mode', ' ', 'branch'})
end

--vim.cmd([[autocmd VimEnter * lua AccentDemo()]])

--vim.g.airline_section_b = [[%{vim.fn['fugitive#head']()}]]
