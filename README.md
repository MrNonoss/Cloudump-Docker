# cloudump-docker
Build Cloudump system from https://github.com/Oseid/Cloudump in order to find the real IP behind Cloudlare Protection

- This docker image is only made to provide an "out of the box" solution to une Cloudump from https://github.com/Oseid
- It's use is to find the real IP behind Cloudflare.

I must be honest, it's also a good and simple way to start playing with git and docker.

Usage:
- docker run mrnonoss/cloudump cloudump "URL"
- (where "URL" is the domain name protected by Cloudflare)

Just as simple as that...
Have fun
