# lvdund nvim

This is my nvim configurations for: golang, markdown preview.
TODO: I will update for ...

`What I use:`
- [Folk Lazyvim](https://github.com/folke/lazy.nvim)
- [Lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Formartter](https://github.com/stevearc/conform.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Golang:
    - [goplements](https://github.com/maxandron/goplements.nvim): visualizes Go struct and interface implementations.
    - [gotest](https://github.com/CadeMichael/gotest.nvim): run go tests from within Neovim.
    - [go-tag](https://github.com/devkvlt/go-tags.nvim): modify Go struct tags.
- ...

## Requirement

- Install fzf & ripgrep for [Telescope](https://github.com/nvim-telescope/telescope.nvim)
```bash
sudo apt install fzf ripgrep
```

- Install Golang dependencies:
```bash
go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/fatih/gomodifytags@latest
```

- Install Neovim v0.10+
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
```

Then add this to your shell config (~/.bashrc, ~/.zshrc, ...):
```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

- Clean nvim cache
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

## Install

```bash
git clone https://github.com/lvdund/nvim ~/.config/nvim && nvim
```
