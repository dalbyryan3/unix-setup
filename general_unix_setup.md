# Ryan Dalby General Unix Setup

## General Programs to Install
* Vim- For general text editing, works well with command line. Install vim or related vim package that may contain gvim using package manager. (https://github.com/vim/vim)

* Tmux- Allows for terminal multiplexing and persistent session, especially useful when using ssh. Install tmux using package manager. (https://github.com/tmux/tmux)

* VSCode- For more in-depth text editing and/or general coding, can install plugins easily using VSCode GUI. Install VSCode using package manager or through web browser. (https://github.com/microsoft/vscode)

* The Silver Searcher (Ag)- For searching text files across directories. Install The Silver Searcher using package manager. (https://github.com/ggreer/the_silver_searcher)

## General Themes and Keybindings
### Theme- One Dark
* One Dark Pro plugin for VS Code
* Onedark.vim for Vim https://github.com/joshdick/onedark.vim (Install like vim plugin in .vimrc)
### Keybindings- Vim 
* VSCodeVim plugin for VS Code
* Standard Vim keybindings in Vim

## Get dot files:
```bash
git clone https://github.com/dalbyryan3/dot-files.git ~/dot-files
```
(Note for shell related config (~/.bashrc, ~/.zshrc, etc.) the files may not play well if used directly from dot-files repository with another system (shell configs are there mainly for just getting the idea of the settings), for application configs should be fine as is, see Shell Configuration for key things to append to shell config. Also note that some configs in dot-files repository are for certain shells or operating systems so just use what is needed for use case.)

### Use dot files for specific Unix system as desired using symlinks, i.e. for .vimrc:
```bash
ln -s ~/dot-files/.vimrc ~/.vimrc 
```

## Shell Configuration
### Add the following to bash related config (~/.bashrc, ~/.zshrc, etc.)
```bash
export VISUAL=vim
export EDITOR="$VISUAL"
alias tmux="tmux -2"
```

## Vim Setup
### Install Vundle for plugins
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Use .vimrc from dot_files and open Vim and install plugins
```bash
vim
:PluginInstall
```
(Note if fzf outside of Vim is installed through :PluginInstall, will have to run install script in ~/.vim/bundle/fzf/install to get command line integration)

## Tmux Setup
### Install tmux-plugins for plugins
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
### Use .tmux.conf from dot_files and open tmux and install plugins
```bash
tmux
prefix + I
```

## VSCode Setup
Login using GitHub to sync settings JSON files and install extensions.
