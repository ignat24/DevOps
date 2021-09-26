# DevOps
Danil Ignatushkin 

- LinuxNet------------------------------
- VM1 interface(NAT, internal)
1. sudo nano /etc/network/interfaces

"#NAT
auto eth0
iface inet eth0 dhcp

#Internal
auto eth1
iface inet eth1 static
address 10.10.10.1
netmask 255.255.255.0
broadcast 10.10.10.255"
2. sudo nano /etc/sysctl.conf
"uncomment: net.ipv4.ip_forward=1"
3. sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

4. sudo nano /etc/dnsmasq.conf 
- uncomment: "interface = eth0" and "dhcp-range=10.10.10.10,10.10.10.20,12h

- VM2 - interface (internal)
1. sudo nano /etc/network/interfaces
"auto eth0
iface inet eth0 dhcp"
2. sudo nano /etc/sysctl.conf
- uncoment: "net.ipv4.ip_forward=1"

--------------------------
3. route #Check route from VM2 to HOST
4. ping 8.8.8.8 #Check acceess to the internet
5. host 8.8.8.8 # Check resource with ip 8.8.8.8 
6. host epam.com #Check ip resource "epam.com"
7. route # Route to my HOST from VM1
8. traceroute google.com #Trace route to google.com

------------------------------------

