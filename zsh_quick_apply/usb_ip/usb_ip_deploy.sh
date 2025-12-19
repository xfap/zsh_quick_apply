#!/bin/bash
# 极简USB IP写入部署

# 创建脚本
cat > /home/$(whoami)/print_ip.sh << 'EOF'
#!/bin/bash
for i in {1..20}; do
    MOUNT_POINT=$(findmnt -n -o TARGET --first-only --source "/dev/$1" 2>/dev/null)
    [ -n "$MOUNT_POINT" ] && break
    sleep 1
done
[ -n "$MOUNT_POINT" ] && echo "$(hostname -I | awk '{print $1}')" > "${MOUNT_POINT}/ip.txt"
EOF

chmod +x /home/$(whoami)/print_ip.sh

# 创建udev规则
sudo bash -c 'echo "ACTION==\"add\", KERNEL==\"sd?[1-9]\", SUBSYSTEM==\"block\", ENV{DEVTYPE}==\"partition\", RUN+=\"/bin/sh -c '\''/home/$(whoami)/print_ip.sh %k &'\''\"" > /etc/udev/rules.d/99-usb-ip.rules'

# 重载规则
sudo udevadm control --reload-rules
sudo udevadm trigger

echo "部署完成！插入USB设备测试。"
