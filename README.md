# /etc/rc.conf

    nginx_enable="YES"
    varnishd_enable="YES"
    varnishd_flags="-f /usr/local/etc/varnish/default.vcl -a 0.0.0.0:8888"
