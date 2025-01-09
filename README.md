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
Generate compile_command.json
```sh
cd YOUR_CPP_PROJ
mkdir -p cmake/build
cd cmake/build
cmake ../.. -DMAKE_EXPORT_COMPILE_COMMANDS=ON
```
You should see it in the cmake/build directory. You can copy or symlink it to your project root if needed.

Python in MacOS issues
Due to the removal of the long-deprecated pkgutil.ImpImporter class, the pip command may not work for Python 3.12.
You just have to manually install pip for Python 3.12

```sh
python -m ensurepip --upgrade
python -m pip install --upgrade setuptools
python -m pip install <module>
```
In your virtual environment
```sh
pip install --upgrade setuptools
```

Python comes with an ensurepip, which can install pip in a Python environment.
## Additional Setup

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
