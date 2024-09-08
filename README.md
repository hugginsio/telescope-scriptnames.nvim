# 🔭 telescope-scriptnames.nvim

Display `:scriptnames` in a Telescope picker. Select to open the file in a new buffer.

## Requirements

- [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)

## Configuration

Install using your favorite plugin manager. Whatever you choose, make sure you register it with Telescope:

```lua
require("telescope").load_extension "scriptnames"
```

## Usage

Once loaded by Telescope, you can launch the picker with this command:

```
:Telescope scriptnames
```

Or, from Luascript:

```lua
require("telescope").extensions.scriptnames.scriptnames()
```
