ssh-keygen -t ed25519 -C "email@domain.com"
eval "$(ssh-agent -s)"

echo "Copy the following public key and add it to your GitHub account:"
cat ~/.ssh/id_rsa.pub

git config --global user.email "email@domain.com"
git config --global user.name "Your Name"
