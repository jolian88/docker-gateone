![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# OpenResty Docker Image based on ArchLinux

This is a docker image for the [OpenResty](https://openresty.org/en/) web platform based on NGINX and LuaJIT.  It is uses the base ArchLinux docker image and installs the [Dezota OpenResty with Extras](https://github.com/Dezota/ArchLinuxPackages) package.  This package enables the following OpenResty/NGINX modules:
* [replace-filter-nginx-module](https://github.com/openresty/replace-filter-nginx-module)
* [lua-resty-upstream-healthcheck](https://github.com/openresty/lua-resty-upstream-healthcheck.git)

#### Build Yourself
```
git clone https://github.com/Dezota/dockerfiles.git
cd openresty
make build
make run
```

