# BlackHole

A dark, vibrant colorscheme for Neovim with excellent syntax highlighting and plugin support.

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
