local gset = vim.api.nvim_set_var
gset('airline#extensions#tabline#enabled', 1)
gset('airline#extensions#branch#enabled', 1)
gset('airline#extensions#branch#use_vcscommand', 0)
gset('airline#extensions#branch#displayed_head_limit', 10)
gset('airline#extensions#branch#format', 0)
gset('airline#extensions#hunks#enabled', 1)
gset('airline#extensions#hunks#non_zero_only', 0)
gset('airline#extensions#hunks#hunk_symbols', "['+', '~', '-']")
gset('airline_powerline_fonts', 1)
gset('Powerline_symbols', 'fancy')
gset('airline#extensions#tabline#fnamemod', ':t')

vim.cmd[[
    let g:airline_left_sep = '»'
    let g:airline_left_sep = ''
    let g:airline_right_sep = '«'
    let g:airline_right_sep = ''
]]
