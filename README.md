# zsh_quick_apply

## Quick apply

请在当前机器安装并启用 [zsh_quick_apply](https://github.com/xfap/zsh_quick_apply)：先识别操作系统、发行版、CPU 架构、默认 Shell 和可用包管理器，备份现有 Shell 配置，再根据本机环境调整 README 中的命令；如果遇到依赖、路径、权限或命令不兼容，请定位原因并采用当前平台的等价方案修复（涉及提权或覆盖文件时先征求确认），最后验证 Zsh 能正常启动且配置已经生效，并说明改动和验证结果。

This moves the template files to your home directory, including dotfiles. Back
up any existing shell configuration first. Exit the spawned Zsh session to
continue with the default-shell change and cleanup.

### macOS

```zsh
cd ~ && \
  git clone https://github.com/xfap/zsh_quick_apply.git temp_zsh && \
  mv temp_zsh/zsh_quick_apply/.[!.]* temp_zsh/zsh_quick_apply/* . && \
  zsh && \
  chsh -s "$(which zsh)" && \
  rm -rf temp_zsh
```

### Ubuntu

```zsh
sudo apt-get install -y zsh && cd ~ && git clone https://github.com/xfap/zsh_quick_apply.git temp_zsh && mv ~/temp_zsh/zsh_quick_apply/* ~/temp_zsh/zsh_quick_apply/.[^.]* . && zsh && chsh -s "$(which zsh)"
```

### CentOS

```zsh
sudo yum install -y zsh && cd ~ && git clone https://github.com/xfap/zsh_quick_apply.git temp_zsh && mv ~/temp_zsh/zsh_quick_apply/* ~/temp_zsh/zsh_quick_apply/.[^.]* . && zsh && chsh -s "$(which zsh)"
```

## Copy fiels in directory `settings` to your home dir.

Run: `zsh`. 
That's all.

If somethins wrong? 

## First check if installed Zsh in your computer

- `which zsh`
- Or, `cat /etc/shells`

1. If zsh not found, you should install `zsh` on your computer.

On Mac: brew install zsh
On Linux: yum(or apt-get) install zsh
Build from source: 
  - `wget https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz`
    - or manually download from [zsh](https://zsh.sourceforge.io/Arc/source.html)
  - Unzip the file, run `tar -xvf zsh-5.9.tar.xz`
  - Building
    - `./configure --prefix=path-to-install`
    - `make -j && make install`
  - Add the zsh install path `path-to-install/bin` to PATH, i.e., in ~/.bashrc, `export PATH=path-to-install/bin:$PATH`

Check: run `zsh --version`

2. Make it your default shell: `chsh -s $(which zsh)`

More info, see [zsh install](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

## Check if installed `autojump`

Install it.

## Zsh themes
https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

## Zsh Usage

- [zsh 快捷键让shell 命令效率飞起 - 掘金](https://juejin.cn/post/6844903849572974605)
 加粗常用
`⌃` 表示control键(windows)，win键(mac)
**⌃ + u：清空当前行**

**⌃ + a：移动到行首**

**⌃ + e：移动到行尾**

⌃ + f：向前移动

⌃ + b：向后移动

**⌃ + p：上一条命令**

**⌃ + n：下一条命令**

⌃ + r：搜索历史命令

⌃ + y：召回最近用命令删除的文字

⌃ + h：删除光标之前的字符

⌃ + d：删除光标所指的字符

**⌃ + w：删除光标之前的单词**

**⌃ + k：删除从光标到行尾的内容**

⌃ + t：交换光标和之前的字符

- [Terminal - 快捷键相关操作 - 思维风暴](https://tkstorm.com/posts-list/os/linux/terminal-tips/)

# 中文
1. 首先确认主机是否有安装zsh，
- `which zsh`
- Or, `cat /etc/shells`

如果没有，则进行安装
- On Mac: brew install zsh
- On Linux: yum(or apt-get) install zsh
Build from source: 
● wget https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz
  ○ or manually download from zsh
● Unzip the file, run tar -xvf zsh-5.9.tar.xz
● Building
  ○ ./configure --prefix=path-to-install
  ○ make -j && make install
● Add the zsh install path path-to-install/bin to PATH, i.e., in ~/.bashrc, export PATH=path-to-install/bin:$PATH

- Check: run zsh --version

1. 然后把附件中文件复制到个人目录下（cd ~）
  a. 注意包含隐藏文件![](1723020436093.png)，
  b. 可以通过命令，`mv zsh_quick_apply/.[^.]* zsh_quick_apply/* ~`
1. 终端上运行一下zsh命令，查看效果是否正确，如![](1723020578534.png)，
2. Make zsh your default shell: `chsh -s $(which zsh)`
3. VS Code选择默认终端为zsh，
  a. VScode设置json中，增加："terminal.integrated.defaultProfile.linux": "zsh",
