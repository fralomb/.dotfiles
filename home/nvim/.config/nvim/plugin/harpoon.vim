nnoremap <silent><leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><leader>hm :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>hdm :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><leader>hf1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><leader>hf2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><leader>hf3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><leader>hf4 :lua require("harpoon.ui").nav_file(4)<CR>

nnoremap <silent><leader>hnf :lua require("harpoon.ui").nav_next()<CR>
nnoremap <silent><leader>hpf :lua require("harpoon.ui").nav_prev()<CR>

nnoremap <silent><leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <silent><leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <silent><leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <silent><leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>

nnoremap <silent><leader>htu :lua require("harpoon.tmux").gotoTerminal(1)<CR>
nnoremap <silent><leader>hte :lua require("harpoon.tmux").gotoTerminal(2)<CR>
nnoremap <silent><leader>hcu :lua require("harpoon.tmux").sendCommand(1, 1)<CR>
nnoremap <silent><leader>hce :lua require("harpoon.tmux").sendCommand(1, 2)<CR>
