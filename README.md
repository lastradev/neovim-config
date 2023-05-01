# Neovim Config 🖌️

Personal configuration for Neovim text editor.  
Plugins courtesy of the community ❤️


## Folder Structure

```text
📂 ~/.config/nvim
├── 📂 lua
│  ├── 📁 core
│  │  ├── 🎨 colors.lua
│  │  ├── ✂️ keymaps.lua
│  │  ├── ⚙️ options.lua
│  │  └── 🧰 utils.lua
│  └── 📂 modules
│     ├── 📁 config
│     │  ├── 🔨 plugin_name.lua
│     │  └── 🔨 ...
│     └── 🛠️ init.lua
└── 🛠️ init.lua
```

**init.lua** is responsible of loading modules.  
**lua/core/** contain neovim configurations not related to plugins.  
**lua/modules/** contain plugin specific configuration  


## Installation

- Make sure to install neovim >= 0.6 (working fine on nvim stable)
- Install [gcc](https://gcc.gnu.org/) for treesitter C compilation
- Install [pynvim](https://github.com/neovim/pynvim) for snippets
- Install [fd](https://github.com/sharkdp/fd) and [ripgrep](https://github.com/BurntSushi/ripgrep) for Telescope
- Install [codicons font](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf) for lspkind

Clone repo to your config folder (usually located in ~/.config/nvim)

```
cd ~/.config
git clone https://github.com/lastra-dev/neovim-config.git nvim
```
