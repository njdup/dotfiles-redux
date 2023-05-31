# Install brew packages from brew.txt
<brew.txt xargs brew install

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# symlink config files
mkdir -p $HOME/.config/nvim

# configure to copy desired ascii art to nvim; default to 2B
cp ./ascii-art/ascii-art-2b.txt $HOME/.config/nvim/ascii-art.txt

# symlink neovim configs
ln -sf $PWD/neovim/vimrc.vim $HOME/.config/nvim/vimrc.vim
ln -sf $PWD/neovim/init.lua $HOME/.config/nvim/init.lua
ln -sf $PWD/neovim/lua $HOME/.config/nvim/
ln -sf $PWD/neovim/after $HOME/.config/nvim/

# symlink zshrc
ln -s $PWD/zshrc $HOME/.zshrc

# symlink clang tooling
ln -s "$(brew --prefix llvm)/bin/clang-format" "/usr/local/bin/clang-format"
ln -s "$(brew --prefix llvm)/bin/clang-tidy" "/usr/local/bin/clang-tidy"

# install mambaforge
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh

