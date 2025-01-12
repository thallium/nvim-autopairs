set rtp +=.
set rtp +=../plenary.nvim/
set rtp +=../nvim-treesitter
set rtp +=../playground/

lua _G.__is_log = true
runtime! plugin/plenary.vim
runtime! plugin/nvim-treesitter.vim
runtime! plugin/playground.vim
runtime! plugin/nvim-autopairs.vim

set noswapfile
set nobackup

filetype indent off
set nowritebackup
set noautoindent
set nocindent
set nosmartindent
set indentexpr=

lua << EOF
require("plenary/busted")
vim.cmd[[luafile ./tests/test_utils.lua]]
require("nvim-autopairs").setup()
EOF
