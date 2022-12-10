#!/bin/sh


#oh-my-zsh
if [ -z "$1" ]; then
 echo "安装oh-my-zsh"
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 echo ""
fi
#高亮
echo "下载高亮插件"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""
#自动补全
echo "下载自动补全插件"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo ""
echo "手动添加插件到 .zshrc (zsh-autosuggestions zsh-syntax-highlighting)"
echo ""
echo "下载pure 皮肤插件"
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "添加 fpath+=($HOME/.zsh/pure) 到 .zshrc"
echo "添加 autoload -U promptinit; promptinit 主题下"
echo "添加 prompt pure 主题下"
