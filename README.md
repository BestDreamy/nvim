#### 根据 neovim 仓库下载最新版本：https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-download

![image](https://github.com/BestDreamy/nvim/assets/64453255/e03f0939-4484-4731-8e94-f037e5740ac0)


#### 安装依赖
使用清华镜像源即可
```
sudo apt install python3 python3-pip
```

#### 安装 Nerd Font， 避免乱码
在 https://www.nerdfonts.com/font-downloads 中下载 CascadiaCode Nerd Font
```
sudo unzip CascadiaCode.zip -d /usr/share/fonts/CascadiaCode
cd /usr/share/fonts/CascadiaCode
sudo mkfontscale # 生成核心字体信息
sudo mkfontdir # 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存
```
