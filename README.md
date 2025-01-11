# natmap-mc-cloudflare-windows

srv_id="SRV记录的recordid"

zone_id="账号区域id"

email="cloudflare邮箱"

global_Key="全局api"

external_domain="SRV解析前的目标域名"

srv_domain="SRV解析后访问的域名"



变量填好后，执行natter_windows_x64.exe -m socket -b 0 -t {内网转发ip} -p {内网转发端口} -e srv.bat

特别鸣谢：natmap               
同时感谢灵感来源：qihang518887
