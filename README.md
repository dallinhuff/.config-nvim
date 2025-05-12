# My nvim config

My WIP neovim config, heavily inspired by:
  - [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
  - [Prime's init.lua](https://github.com/ThePrimeagen/init.lua)
  - [vineeth.io's neovim setup](https://vineeth.io/posts/neovim-setup)

## Caveats & Dependencies

#### ripgrep

Telescope's fuzzy finding is a lot more performant and accurate when you have `ripgrep` installed,
as it will ignore paths specified in `.gitignore`, etc.

```sh
brew install ripgrep
```

