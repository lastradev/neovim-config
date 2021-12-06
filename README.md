# Neovim Config 🖌️

![neovim dashboard](https://i.imgur.com/rD2KOB1.png)


## Description

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

Clone repo to your config folder (usually located in ~/.config/nvim)

```
cd ~/.config
git clone https://github.com/lastra-dev/neovim-config.git nvim
```


## Extra

I'm currently using Luke Smith's [st terminal](https://github.com/LukeSmithxyz/st)
with [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads) and
the [Dracula](https://draculatheme.com/xresources) color pallet configured with
[Xresources](https://github.com/lastra-dev/dotfiles/blob/master/.Xresources).
Make sure to install and configure those things if you want the same appearance as the screenshots.

I took the wallpaper from [here](https://gitlab.com/dwt1/wallpapers/-/blob/master/0070.jpg).


## Screenshots

![neovim outline](https://i.imgur.com/HQpm4x2.png)
![neovim lspsaga](https://i.imgur.com/PWyYOqv.png)
