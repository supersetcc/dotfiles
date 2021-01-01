# Dotfiles

## Installation

1. Git clone
```
git clone git@github.com:supersetcc/dotfiles.git ~/.dotfiles
```

2. Create symbolic link
```
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
```
3. Install [vimplug](https://github.com/junegunn/vim-plug) and install vim plug-ins.
4. Install latest [Tmux](https://gist.github.com/pokev25/4b9516d32f4021d945a140df09bf1fde).
5. Install zsh & [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh).
6. Install fasd

## Things to set up

### Shortcuts
- [zsh + iTerm2 OSX shortcuts](https://coderwall.com/p/a8uxma/zsh-iterm2-osx-shortcuts)
- [Word/Line deletion and navigation shortcuts in iTerm2](https://coderwall.com/p/ds2dha/word-line-deletion-and-navigation-shortcuts-in-iterm2)

### VPN
- [Extracting OTP Secret from Authy](https://gist.github.com/gboudreau/94bb0c11a6209c82418d01a59d958c93)
- [Download Auto-VPN Alfred Workflow(by KimMachineGeon)](http://ab180-share.s3-ap-northeast-1.amazonaws.com/Auto-VPN.alfredworkflow)

### Datagrip
- Schema가 보이지 않을때 (properties에서 schema 싱크를 해줘야함)
  ![](http://ab180-share.s3-ap-northeast-1.amazonaws.com/pb-TklbM4DuG5.png)

### Alfred
- JSON beautifier: https://github.com/importre/alfred-tidy
