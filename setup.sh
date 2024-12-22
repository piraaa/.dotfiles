#!/bin/sh

# zsh
ln -sf ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# git
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
curl -o ~/.dotfiles/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.dotfiles/.zsh/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o  ~/.dotfiles/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# homebrew 
# @see https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ln -sf ~/.dotfiles/homebrew/Brewfile ~/Brewfile
brew bundle
brew bundle cleanup
brew bundle check

# anyenv init
anyenv init
anyenv install --init

#nodenv
anyenv install nodenv

# jenv
exec $SHELL
jenv enable-plugin export
jenv add /opt/homebrew/Cellar/openjdk@11/11.0.25.libexec/openjdk.jdk/Contents/Home/
jenv add /opt/homebrew/Cellar/openjdk@17/17.0.13.libexec/openjdk.jdk/Contents/Home/
jenv add /opt/homebrew/Cellar/openjdk@21/21.0.5.libexec/openjdk.jdk/Contents/Home/

# k8s
git clone https://github.com/superbrothers/zsh-kubectl-prompt.git ~/.dotfiles/.lib/zsh-kubectl-prompt
