#link dotfiles

# Merge .gitconfig file
cat ~/.gitconfig ~/dotfiles/.gitconfig > ~/tmpgitconfig
mv ~/tmpgitconfig ~/.gitconfig

# Merge .zshrc file
cat ~/.zshrc ~/dotfiles/.zshrc > ~/tmpzshrc
mv ~/tmpzshrc ~/.zshrc

