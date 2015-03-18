Ubuntu12.04以上版本dnsmasq分流

# 云梯vpn网址
[XXX](www.ytvpn.com)

# 设置dnsmasq

`sudo vi /etc/dnsmasq.conf`

添加下面内容：

`no-resolv`

`no-poll`

`server=223.5.5.5`

`server=223.6.6.6`

`server=/google.com/8.8.8.8`

`server=/facebook.com/8.8.8.8`

`server=/twitter.com/8.8.8.8`

`server=/plus.google.com/8.8.8.8`

`server=/mail.google.com/8.8.8.8`

`server=/youtube.com/8.8.8.8`

然后重启dnsmasq服务：
`sudo service dnsmasq restart`

在VPN的DNS中添加127.0.0.1
