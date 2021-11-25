# Proxy

A simple proxy to view requests and responses.

## Install

To download latest version:

```
$ curl -o proxy https://sweetohm.net/dist/proxy/proxy
$ chmod +x proxy
```

Move this script somewhere in your *PATH* (*/usr/bin/local* for instance).

## Run

You must have a Python virtual interpreter installed. Then you can run *proxy* with:

```
$ proxy --addr 127.0.0.1:8001 --port 8000
################################################################################
#                 Processing request from ('127.0.0.1', 55116)                 #
#                       received at 2021-11-25 13:42:45                        #
################################################################################
# REQUEST ######################################################################
GET / HTTP/1.1
Host: 127.0.0.1:8000
Connection: keep-alive
Cache-Control: max-age=0
sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"
sec-ch-ua-mobile: ?0
sec-ch-ua-platform: "Linux"
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Sec-Fetch-Site: none
Sec-Fetch-Mode: navigate
Sec-Fetch-User: ?1
Sec-Fetch-Dest: document
Accept-Encoding: gzip, deflate, br
Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7
# RESPONSE #####################################################################
HTTP/1.1 200 OK
Date: Thu, 25 Nov 2021 12:42:45 GMT
Content-Length: 10
Content-Type: text/plain; charset=utf-8

Hello, "/"
```

You can also run the script with Python interpreter:

```
$ python proxy --addr 127.0.0.1:8001 --port 8000
```

You can also add headers in requests with `--head foo` option:

```
$ proxy --addr 127.0.0.1:8001 --port 8000 --head "Authorization: Bearer foo"
```

To get help on command line options, type:

```
$ proxy -h
usage: proxy [-h] [--addr ADDR] [--port PORT] [--head HEAD]

Proxy to print requests and responses

optional arguments:
  -h, --help   show this help message and exit
  --addr ADDR  The address to redirect to (default '127.0.0.1:8001')
  --port PORT  The port the proxy is listening (default 8000)
  --head HEAD  Header to add in requests
```

## License

This tool is released under [Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0).

*Enjoy!*
