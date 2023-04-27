# zsh_quick_apply

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
