# lvdund nvim

This is my nvim configurations for: golang, markdown preview, git, term.
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
    - [gotest](https://github.com/CadeMichael/gotest.nvim)
    - [go-tag](https://github.com/devkvlt/go-tags.nvim)
- Git: 
    - [Lazygit](https://github.com/kdheepak/lazygit.nvim)
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim): git status preview.
- [Terminal](https://github.com/akinsho/toggleterm.nvim)
- ...

## Requirement

- Install fzf & ripgrep for [Telescope](https://github.com/nvim-telescope/telescope.nvim)
```bash
sudo apt install -y fzf ripgrep
```

- Replace rm by `trash-cli` in [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
```bash
sudo apt install -y trash-cli
```

- Install Golang dependencies:
```bash
go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/fatih/gomodifytags@latest
```

- Install Lazygit
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```

- Install Neovim v0.10+
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
```

Then add this to your shell config (~/.bashrc, ~/.zshrc, ...):
```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
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
