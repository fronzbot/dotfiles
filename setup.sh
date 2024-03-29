# Performs initial setup of dot files
mkdir -p ~/.vim/tmp
mkdir -p ~/.vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
bash gen_symlinks.sh $1
#cp SolarizedDark.colorscheme ~/.kde/share/apps/konsole
cp Molokai.colorscheme ~/.kde/share/apps/konsole/
cp Molokai.colorscheme ~/.local/share/konsole/
cp molokai.vim ~/.vim/colors/molokai.vim
cp monokai.vim ~/.vim/colors/monokai.vim

vim -c 'PluginInstall' -c 'qa!'

if [ $1 = "mac" ]; then
    source ~/.zshrc
else
    echo "Run command: source ~/.bashrc or source ~/.cshrc depending on need."
fi
