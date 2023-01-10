sudo iptables -I INPUT -p tcp --dport 2377 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -I OUTPUT -p tcp --sport 2377 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 7946 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -I OUTPUT -p tcp --sport 7946 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -I INPUT -p udp --dport 4789 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -I OUTPUT -p udp --sport 4789 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -I INPUT -p udp --dport 7946 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -I OUTPUT -p udp --sport 7946 -m conntrack --ctstate ESTABLISHED -j ACCEPT