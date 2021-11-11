# Instalacia Neovim

- ? zatial treba pridavat unstable package lebo apt install neovim nainstaluje 0.44 verziu
- pridanie ppa unstable release neovimu & instalacia neovimu:

```shell
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt install neovim -y
```

## Kopirovanie repo

- repository sa vzdy kopiruje do .config/nvim priecinku

```shell
git clone clone SteppenLion/nvim\
 ~/.config/nvim/
```

# Instalacia Packer-a (package manager)

- nainstaluj Packer [GitHub-odkaz](https://github.com/wbthomason/packer.nvim)
- priecinok kde bude nainstalovany neovim: `/.local/share/nvim/site/pack/packer/start/`
- mal by sa nainstalovat sam ale ak nie manualne ho mozeme nainstalovat:

```shell
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Instalacia

# Packages

- informacie o niektorych packages, ktore mam nainstalovane

## Nvim-Tree [GitHub](https://github.com/kyazdani42/nvim-tree.lua)

- supborovy prehliadac pre Neovim napisany v lua
- potrebujeme neovim >= 0.5

```lua
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
}
```

## Nvim-Telescope [GitHub](https://github.com/nvim-telescope/telescope.nvim)

## Keymappings

- key mappings sluzia na mapovanie klavesovych skratiek v vim/neovim

### Nvim Tree

<kbd> space </kbd> je **leader key**

- **File tree (nvim-tree)**

- <kbd> Ctrl </kbd> <kbd> e </kbd> prepinanie neovim tree

## LSP

## Nvim-Completion [GitHub](https://github.com/hrsh7th/nvim-cmp)

# Help

- ako pokracovat a najist spravnu odpoved pomocou `:help` alebo iba skratene `:h`
- napis do Nvim `:h lua` (priklady ako pisat v jazyku lua) alebo `:h config`
