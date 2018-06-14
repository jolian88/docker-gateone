![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# Redash Standalone Image

This is a docker image for [Redash](https://github.com/getredash/redash). 
It is based on Ubuntu 18.04. Unlike the image from Redash, it doesn't
require any external services.  It includes Redis and Postgresql for backend
services, it uses NGINX for a reverse proxy of Redash.  It is configured to
use Postfix to send mail.

For more details and documentation on Redash go to their
[website](https://www.redash.io/).

### Environmental Variables 
#### Set this if your base url is different than the default hostname
```
BASE_URL=https://redash.dezota.com
```

#### Set these to use [Google Single Sign-on](https://redash.io/help/open-source/admin-guide/google-developer-account-setup)
```
GOOGLE_CLIENT_ID 
GOOGLE_CLIENT_SECRET
```

#### Set these to have your Gmail account send mail on behalf of Redash
```
GMAIL_ADDR - Gmail address
GMAIL_PASSWD - Password for Gmail Account
```
### Usage to build and deploy Redash standalone
```
cd image
make build
cd ../compose-standalone
./run.sh
```
### Usage to build and deploy Redash with an NGINX reverse proxy via Traefik
This allows for [Traefik](https://traefik.io/) to use Let's Encrypt to generate a valid
certificate, keeping the core services behind the firewall, and allow
external access to the web interface.

```
cd image
make build
cd ../compose-traefik
./run.sh
```

### Get started
Go to http://<your_hostname>

The first time you access the website, it will prompt you to create an account.  Enjoy!

