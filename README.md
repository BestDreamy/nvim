# Start
#### 根据 neovim 仓库下载最新版本：https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-download

## Linux
### Pre-built archives
The Releases page provides pre-built binaries for Linux systems.
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
After this step add this to ~/.bashrc:
```
export PATH="$PATH:/opt/nvim-linux64/bin"
```


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

最后，修改终端字体即可，将 custom font 更改为 Nerd Font


# Update
> mason-lspconfig.lua 文件中
> ensure_installed 的选项可以确保下载仓库时，将对应的 lsp 安装好。


需要检查新的语言语法时，需要更新 lspconfig.lua 文件
对应语言配置查看： https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#vhdl_ls

#### 参考：
https://github.com/ye-junzhe/BetterNvim

https://www.qixinbo.info/2022/08/11/neovim_nvchad/
