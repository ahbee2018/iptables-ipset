# iptables-ipset
iptables+ipset 自动更新

文件存放到 /home 路径下

添加重启自动执行  

ctontab -e  

添加以下两条
@reboot /home/ipset_refresh.sh  

01 */12 * * * /home/dl_chnroute.sh
