# MyLinuxDotfiles
Neovim config files
![Screenshot](https://github.com/dadencukillia/MyLinuxDotfiles/blob/main/assets/Nvim.png)

## Installation
### One line command
You can perform all installation steps automatically with the following command (so you can skip the **Packages** and **Settings** sections):
```sh
curl https://raw.githubusercontent.com/dadencukillia/MyLinuxDotfiles/main/nvim-auto-install.sh | sh
```

### Packages
- Neovim:
```sh
sudo pacman -S neovim gcc git
```
- vim-plug ([If the following command does not work](https://github.com/junegunn/vim-plug?tab=readme-ov-file#unix-linux)):
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- Coc.nvim (for autocomplete) ([If the following command does not work](https://github.com/neoclide/coc.nvim?tab=readme-ov-file#quick-start)):
```sh
curl -sL install-node.vercel.app/lts | bash
```
- Ripgrep (for the "telescope" plugin): 
```sh
sudo pacman -S ripgrep
```

### Configs
- Create nvim's config folder
```sh
rm -rf ~/.config/nvim/* && mkdir -p ~/.config/nvim
```
- Clone nvim's config files from this repository
```sh
git clone --branch nvim https://github.com/dadencukillia/MyLinuxDotfiles.git ~/.config/nvim
```
- Join into nvim and skip all warnings and errors
```sh
nvim -c "PlugInstall"
```

## Settings
### Syntax highlighting and auto-completion
The nvim-treesitter plugin is used for syntax highlighting, and the coc.nvim plugin is used for autocomplete. So far, we have not installed syntax highlighting and autocomplete for any programming language.
Well, you can find an approximate list of autocomplete repositories for a programming language at [this link](https://npms.io/search?q=coc.nvim), in any case, you can enter `coc *programming language*` in Google and with a high probability you will find a repository that implements autocomplete. To install it, just run the command ```nvim -c "CocInstall *link to repository*"```, but it is better to install autocomplete according to the instructions from the repository.
To implement the highlighting, go to the file located at ~/.config/nvim/lua/init.lua and add the name of the programming language to the value of the `ensure_installed` variable. Example:
```
ensure_installed = {"go", "cpp", "c", "cmake", "rust"},
```
You can see the entire list of available programming languages at [this link](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages).

Well, now you have autocomplete and highlighting, so writing code should be easier, thanks to coc.nvim and nvim-treesitter.

## Hotkeys
- `Ctrl+S` - save the opened file
- `Ctrl+E` - toggle the file explorer
- `Space+ff` - find a file by name
- `Space+fg` - find a file by content
- `Ctrl+y` - accept autocompletion
- `gb` - go through the buffer (tabs that are created by the file explorer using the Enter key) to the right
- `gB` - go through the buffer (tabs that are created by the file explorer using the Enter key) to the left
- `gcc` or `gc` - comment a code fragment