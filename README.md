# MyLinuxDotfiles
Kitty and Oh-my-zsh config files
![Screenshot](https://github.com/dadencukillia/MyLinuxDotfiles/blob/main/assets/Terminal.png)

## Installation
### Packages
- JetBrains mono nerd fonts
```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```
- Kitty:
```bash
sudo pacman -S kitty
```
- Oh-my-zsh ([If the following command does not work](https://ohmyz.sh/#install)):
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Starship.rs:
```bash
sudo pacman -S starship
```
- Neofetch:
```bash
sudo pacman -S neofetch
```

### Configs
- Kitty:
```bash
(mkdir -p ~/.config/kitty) && (curl https://raw.githubusercontent.com/dadencukillia/MyLinuxDotfiles/terminal/kitty.conf -o ~/.config/kitty/kitty.conf)
```
- Oh-my-zsh:
```bash
chsh -s $(which zsh) && (curl https://raw.githubusercontent.com/dadencukillia/MyLinuxDotfiles/terminal/zshrc >> ~/.zshrc)
```
- Starship.rs:
```bash
(echo "eval \"\$(starship init zsh)\"" >> ~/.zshrc) && (curl https://raw.githubusercontent.com/dadencukillia/MyLinuxDotfiles/terminal/starship.toml -o ~/.config/starship.toml)
```
- Neofetch:
```bash
(mkdir -p ~/.config/neofetch) && (curl https://raw.githubusercontent.com/dadencukillia/MyLinuxDotfiles/terminal/neofetch_config.conf -o ~/.config/neofetch/config.conf)
```