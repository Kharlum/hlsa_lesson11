$ORIGIN .
$TTL 3600       ; 1 hour
example-cdn.com           IN SOA  example-cdn.com. hostmaster.example-cdn.com. (
                                2          ; serial
                                900        ; refresh (15 minutes)
                                600        ; retry (10 minutes)
                                86400      ; expire (1 day)
                                3600       ; minimum (1 hour)
                                )
$TTL 0  ; 0 seconds
                        NS      127.0.0.11.
$TTL 3600       ; 1 hour
                        A       172.28.3.10
