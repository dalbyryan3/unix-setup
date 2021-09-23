# Ryan Dalby General Linux Setup

## General programs to Install
* Vim- For general text editing, works well with command line (install vim or related vim package that may contain gvim)

* VSCode- For more in-depth text editing and/or general coding, can install plugins easily using VSCode gui

## General Themes and Keybindings
### Theme- One Dark
* One Dark Pro plugin for VS Code
* Onedark.vim for Vim https://github.com/joshdick/onedark.vim (Install like vim plugin)
### Keybindings- Vim 
* VSCodeVim plugin for VS Code
* Standard Vim keybindings in Vim

## Get dot files:
```bash
git clone https://github.com/dalbyryan3/dot-files.git ~/
```

### Use dot files for specific Unix system as desired using symlinks, i.e. for .vimrc:
```bash
ln -s ~/dot_files/.vimrc ~/.vimrc 
```

## VIM Setup
### Install Vundle for plugins
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Use .vimrc from dot_files and open Vim and install plugins
```bash
vim
:PlugInstall
```

