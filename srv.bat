@echo off

REM Cloudflare 信息
set "srv_id="
set "zone_id="
set "email="
set "global_Key="

REM Minecraft 信息
set "external_domain="
set "srv_domain="
set "public_port=%5"

echo 正在更新 SRV 记录...

REM 更新 SRV 记录
curl -X PATCH ^
     -H "Content-Type: application/json" ^
     -H "X-Auth-Email: %email%" ^
     -H "X-Auth-Key: %global_Key%" ^
     -d "{\"type\":\"SRV\",\"name\":\"_minecraft._tcp.%external_domain%\",\"data\":{\"port\":%public_port%,\"priority\":0,\"weight\":0,\"target\":\"%srv_domain%\"}}" ^
     https://api.cloudflare.com/client/v4/zones/%zone_id%/dns_records/%srv_id%

echo ---Done---