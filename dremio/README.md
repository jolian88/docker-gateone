![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# Dremio Community Edition 

This is a docker image for [Dremio](https://github.com/dremio/dremio-oss). 
It is based on CentOS.  In addition to the Dremio Server, the vnstat daemon
is configured to report on network traffic to Dremio.  The compose directory
contains the default dremio.conf and dremio-env files with the exception
that HTTPS is enabled with a self-signed certificate.  You can customize
these further for cluster deployments but out of the box it creates a single
node where execution and coordination happens on the same node.

For more details and documentation on Dremio go to their
[website](https://www.dremio.com/).

### Usage to build and deploy
```
cd image
make build
cd ../compose
./run.sh
```

### Get started
Go to http://<your_hostname>:9047

The first time you access the website, it will prompt you to create an account.  You have an
option to create a sample data source and setup additional data sources. 
Enjoy!

### Usage to view data transfers
```
$ docker exec -it dezota_dremio_1 vnstat
Database updated: Sat Jun  9 06:51:08 2018

   eth0 since 06/09/18

          rx:  72.65 MiB      tx:  3.64 MiB      total:  76.29 MiB

   monthly
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
       Jun '18     72.65 MiB |    3.64 MiB |   76.29 MiB |    0.87 kbit/s
     ------------------------+-------------+-------------+---------------
     estimated       260 MiB |      10 MiB |     270 MiB |

   daily
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
         today     72.65 MiB |    3.64 MiB |   76.29 MiB |   25.34 kbit/s
     ------------------------+-------------+-------------+---------------
     estimated       252 MiB |      10 MiB |     262 MiB |
```
