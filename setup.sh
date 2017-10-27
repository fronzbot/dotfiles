# Performs initial setup of dot files
mkdir -r ~/.vim/tmp
git clone https://github.com/VundleVim/Vundle.vim/git ~/.vim/bundle/Vundle.vim
bash gen_symlinks.sh
cp SolarizedDark.colorscheme ~/.kde/share/apps/konsole

echo "Run command: source ~/.bashrc or source ~/.cshrc depending on need."
echo "Open Konsole, select Settings > Manage Profiles > Edit Profile > Appearance and select Solarized theme"
echo "Run vim, type :PluginInstall to get plugins. Restart vim"
