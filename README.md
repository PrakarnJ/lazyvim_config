# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Installation
Clone the config
```sh
git clone git@github.com:PrakarnJ/lazyvim_config.git ~/.config/nvim
```
Set up Clang format
```sh
cd ~/.config/nvim
~/.local/share/nvim/mason/bin/clang-format -style=file:.clang_format --dump-config > ~/.clang-format

```
Tmux config
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Tmux source (copy .tmux.conf into /home/NAME/)
```sh
tmux source ~/.tmux.conf
```
