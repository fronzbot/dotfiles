Setup
======

General instructions for using these dotfiles

Influenced heavily by https://github.com/empeee/dotfiles

Vim
----
First, make sure you can create the ``~/.vim/tmp`` directory for history and swap files.  After that, install ``Vundle`` to handle plugins:

.. code:: bash

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Then start vim.  Some errors may pop up since the plugins haven't installed, but inside vim run ``:PluginInstall`` to pull and install plugins.  Quit vim and restart, and everything should be good to go.

Konsole
--------
Taken from https://github.com/phiggins/konsole-colors-solarized

To get the solarized theme into Konsole (using KDE) do the following:

  1. Copy the colorschme file to ~/.kde/share/apps/konsole
  2. Open Konsole, select Settings > Manage Profiles > Edit Profile > Appearance, and then select theme.
  3. Hit OK, then close, and the theme should have taken effect.
