# MyLinuxDotfiles
Neovim config files
![Screenshot](https://github.com/dadencukillia/MyLinuxDotfiles/blob/main/assets/Desktop.png)

## Installation
- Neovim:
```bash
sudo pacman -S neovim
```
- vim-plug: 
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- Coc.nvim (for autocomplete):
```bash
curl -sL install-node.vercel.app/lts | bash
```
- Ripgrep (for the "telescope" plugin): 
```bash
sudo pacman -S ripgrep
```

## After installation
- Create nvim's config folder
```bash
mkdir -p ~/.config/nvim
```
- Clone nvim's config files for this git (make sure if you installed `git`)
```bash
git clone --branch nvim https://github.com/dadencukillia/MyLinuxDotfiles.git ~/.config/nvim
```
- Join into nvim and skip warnings and errors
```bash
nvim
```
- Install plugins
```bash
:PlugInstall
```