backend modmon{
     .host = "91.192.100.102";
     .port = "8000"; # port 8000 is nginx
}

sub vcl_recv {
        remove req.http.X-Forwarded-For;
        set req.http.X-Forwarded-For = client.ip;
        set req.backend = modmon;
        return(pass);
}
