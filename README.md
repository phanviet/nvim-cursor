# Overview

Neovim cursor style. Currently it supports:
  - Cursor color

![Cursor Color](screenshots/js-preview.png?raw=true "Cursor Color")

# Install

Install with [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'phanviet/nvim-cursor'
```

# Usage

Cursor color only works if `termguicolors` is set

```vim
set termguicolors

lua << EOF
require('nvim-cursor').setup({
  normalModeColor='red',
  insertModeColor='#FFAA00'
})
EOF
```
