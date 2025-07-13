# BlackHole

A dark, vibrant colorscheme for Neovim with excellent syntax highlighting and plugin support.

<img width="1920" height="1080" alt="full-screenshot-2025-07-13_12-11-46" src="https://github.com/user-attachments/assets/f1049c49-1a1e-4619-ae6c-d8aa03afce5e" />


## ✨ Features

- 🎨 Vibrant color palette optimized for readability
- 🔍 Full LSP diagnostics support
- 🌳 Complete Treesitter highlighting
- 📁 Nvim-tree file icon colors
- 🔭 Telescope integration
- 📊 GitSigns support
- 🪟 Transparency support
- ⚡ Optimized for performance

## 📦 Installation

### With [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "biisal/blackhole",
    priority = 1000,
    config = function()
        require("blackhole").setup({
            transparent = false, -- Enable transparency
        })
    end,
}
