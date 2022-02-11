:: Download vagrant-docker-compose plugin
:: Ask where their media is saved, every /media will need to be replaced
:: Ask whether they use OpenVPN or WireGuard
:: CHECK if needed files (openvpn.conf etc) exist, if not quit
:: Maybe add the openvpn/wireguard service AFTER they used the script
:: Or use 2 different docker-composes
:: Ask whether they will use Vagrant or just Docker
:: Ask for media path
:: Check whether / or \ in path

@echo off
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
:::  __  __     __   __     __   __     ______     __  __     __   __   _____     __   __  
::: /\ \_\ \   /\ "-.\ \   /\ "-.\ \   /\  ___\   /\ \/ /    /\ \ / /  /\  __-.  /\ \ / /  
::: \ \____ \  \ \ \-.  \  \ \ \-.  \  \ \ \____  \ \  _"-.  \ \ \'/   \ \ \/\ \ \ \ \'/   
:::  \/\_____\  \ \_\\"\_\  \ \_\\"\_\  \ \_____\  \ \_\ \_\  \ \__|    \ \____-  \ \__|   
:::   \/_____/   \/_/ \/_/   \/_/ \/_/   \/_____/   \/_/\/_/   \/_/      \/____/   \/_/   
:::
echo Repo and script by https://github.com/ynnckvdv

vagrant plugin install vagrant-docker-compose