# Config OpenVPN Client

### 1- Install OpenVPN

```bash
sudo apt install openvpn
```

### 2- Change file **/etc/default/openvpn** and uncomment line **AUTOSTART="all"**

```bash
sudo sed -i 's/#AUTOSTART="all"/AUTOSTART="all"/' /etc/default/openvpn
```

or

```bash
sudo nano /etc/default/openvpn
```

### 3- Copy ovpn file to **/etc/openvpn/client/** and rename file

```bash
mv /etc/openvpn/client/*.ovpn /etc/openvpn/client/client.conf
```

### 4- Create a file with certificate password inside of folder **/etc/openvpn/client/**

```bash
echo $CERT_PASS > /etc/openvpn/client/pass
```

### 5- Add the line **askpass pass**  what specify the file of certificate password inside of **/etc/openvpn/client/client.conf**

Exaple:

```conf
client
dev tun
proto udp
remote [SERVER] [PORT]
askpass pass
resolv-retry infinite
nobind
remote-cert-tls server
tls-version-min 1.2
.
.
.
```

### 6- Active service in systemctl

```bash
sudo systemctl enable openvpn@client.service
```

### 7- Reload the daemon

```bash
sudo systemctl daemon-reload
```

### 8- Start service and check if new interface **tun0** was created

```bash
sudo service openvpn@client start
ifconfig | grep tun0
```

### 9- Reboot the system and check again if interface **tun0** exist

Referências: <https://www.ivpn.net/knowledgebase/linux/linux-autostart-openvpn-in-systemd-ubuntu/>