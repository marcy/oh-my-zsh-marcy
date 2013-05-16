#!/bin/bash
echo 'link maker start'
ln -s $(PWD)/my.zshenv.zsh ~/.oh-my-zsh/custom/my.zshenv.zsh
ln -s $(PWD)/my.zshrc.zsh ~/.oh-my-zsh/custom/my.zshrc.zsh
ln -s $(PWD)/my.zsh-theme ~/.oh-my-zsh/themes/my.zsh-theme
ln -s $(PWD)/my.template.zsh ~/.zshrc
echo "done"
