# Usage
```
# on host
$ docker build -t kali-vnc .
$ docker run -it --name kali-vnc -p 5901:5901 kali-vnc

# on container
$ vncserver

# on host(Mac)
$ open vnc://localhost:5901
```

# Tips
## Use browser on container
```
$ chromium
```