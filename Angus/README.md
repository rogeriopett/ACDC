# angus
Versão web do ERP da Runtime

## Available Scripts

### `npm start`
### `npm test`
### `npm run build`

## Pacotes instalados.
```
ok axios
ok extenso
ok jwt-decode
ok pett-componentes (npm install git+ssh://git@github.com/rogeriopett/pett-componentes.git)
ok react-bootstrap
ok react-google-recaptcha
ok react-router-dom
```

## Exemplo SSL no nginx
```
    # HTTPS server
    #
    upstream HorseSSL {
        server 127.0.0.1:9000;
    }

    server {
        listen       443 ssl;
        server_name  localhost;

        ssl_certificate      "c:\win-acme\certificates\phill.runtimesistemas.com.br-crt.pem";
        ssl_certificate_key  "c:\win-acme\certificates\phill.runtimesistemas.com.br-key.pem";

    #    ssl_session_cache    shared:SSL:1m;
    #    ssl_session_timeout  5m;

    #    ssl_ciphers  HIGH:!aNULL:!MD5;
    #    ssl_prefer_server_ciphers  on;

        location / {
            #root   html;
            #index  index.html index.htm;
            add_header Proxy 'HorseSSL - NGINX';
            proxy_pass http://HorseSSL;
        }
    }
```