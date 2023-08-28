# iptables-ipset
iptables+ipset 自动更新

文件存放到 /home 路径下

添加重启自动执行&nbsp
ctontab -e

添加以下两条&nbsp
@reboot /home/ipset_refresh.sh &nbsp

01 */12 * * * /home/dl_chnroute.sh
