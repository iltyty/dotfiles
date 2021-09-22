sudo pacman -S alacritty vim neovim xclip proxychains w3m zathura manjaro-asian-input-support-fcitx fcitx-googlepinyin fcitx-cloudpinyin variety flameshot simplescreenrecorder
sudo pacman-mirrors -i -c China -m rank
sudo pacman -S archlinuxcn-keyring google-chrome v2ray qv2ray ranger zsh
sudo pacman -R firefox

git config --global user.name "Chinwer"
git config --global user.email "qiuyh0924@163.com"

ssh-keygen -t ed25519 -C "qiuyh0924@163.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -selection clipboard < ~/.ssh/id_ed25519.pub

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo chsh -s $(which zsh)

git clone git@github.com:Chinwer/dotfiles ~/.dotfiles
