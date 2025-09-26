sudo apt-get update

sudo apt-get install silversearcher-ag --yes
sudo apt-get install autojump --yes
sudo apt-get install zsh --yes

sudo add-apt-repository ppa:neovim-ppa/unstable --yes
sudo apt-get update
sudo apt-get install neovim --yes

sudo add-apt-repository ppa:x4121/ripgrep --yes
sudo apt-get update
sudo apt-get install ripgrep --yes

sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin --yes
sudo apt-get upgrade tmux --yes

cargo install --locked tree-sitter-cli --force
