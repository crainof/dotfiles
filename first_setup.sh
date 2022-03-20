# pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.9.7

# poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python3
echo 'export PATH="~/.poetry/bin:$PATH"' >> ~/.bashrc
poetry add ansible
poetry add neovim
poetry add pynvim

# starship
curl -fsSL https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts
