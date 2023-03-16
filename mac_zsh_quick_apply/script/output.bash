# 导出工作空间
cd /root && tar -zcvf works.tar.gz --exclude=./works/host_works ./works

# 导出一些配置和历史
# -p, --parents     no error if existing, make parent directories as needed
# 导出一些配置和历史
mkdir -p /root/settings
cp /root/.bash_profile /root/settings/.bash_profile
cp /root/.bash_history /root/settings/.bash_history
cp /root/.python_history /root/settings/.python_history
cp /root/.z /root/settings/.z
cp /root/.zsh_history /root/settings/.zsh_history
# zsh配置
cp /root/.antigenrc /root/settings/.antigenrc
cp /root/.zshrc /root/settings/.zshrc
# 重要，作为Entrypoint的启动命令
cp /root/crontab.txt /root/settings/crontab.txt
cp -r /root/.antigen  /root/settings/.antigen

# 常用脚本
cp -r /root/script /root/settings/script

cd /root && tar -zcvf ud_settings.tar.gz settings
rm -rf /root/settings

# 导出vscode
tar -zcvf .vscode-server.tar.gz .vscode-server

cd /root
mv works.tar.gz /root/works/host_works
mv ud_settings.tar.gz /root/works/host_works
mv .vscode-server.tar.gz /root/works/host_works