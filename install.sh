#link dotfiles

# Merge .gitconfig file
cat ~/.gitconfig ~/dotfiles/.gitconfig > ~/tmpgitconfig
mv ~/tmpgitconfig ~/.gitconfig

# Merge .zshrc file
cat ~/.zshrc ~/dotfiles/.zshrc > ~/tmpzshrc
mv ~/tmpzshrc ~/.zshrc

# Install needed gems
sudo gem install solargraph


# Spin extension
cat <<EOF > "/tmp/private-extensions.json"
{
  "github": {
    "spin-vscode.vsix": "Shopify/spin-vscode"
  }
}
EOF
/usr/local/bin/install-vscode-private-extensions "$(cat /etc/spin/secrets/github_token_shopify)" "/tmp/private-extensions.json" "/home/spin/.cursor-server/extensions"