# Install neovim
brew install neovim

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# symlink config files
mkdir -p $HOME/.config/nvim

ln -sf ./vimrc.vim $HOME/.config/nvim/vimrc.vim
ln -sf ./init.lua $HOME/.config/nvim/init.lua
