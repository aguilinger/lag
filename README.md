# lag

mock server to simulate slow / delayed responses from third-party or external APIs.

## Detailed API usage

Supports POST, GET methods on `/delay/[time to delay in milliseconds]`.

Returns `ping pong` (Content Type: `plain/text`) by default.

If you wish to get a specific JSON response, send it as a JSON body in request.

```shell
$ time curl -X post https://localhost:8090/delay/3000 -d '{"hello": "world"}'

{
    "hello": "world"
}

real	0m4.439s
user	0m0.056s
sys	0m0.070s

```

## Installing locally

> Requires Python 3.6

```shell
$ pip install -r requirements.txt
$ python server.py --port 8090
```


## Running with Docker

Dockerfile is provided as-is, so you may wish to simply build an image and pass the desired port number as env var.


```
docker build -t lag .
docker run -p 8090:80 -i lag
```