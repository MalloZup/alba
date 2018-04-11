# Controller Web-testing module.

This module use chrome headless and cucumber ruby.

In order to use this module after the deploy via terraform, you need to specificy the target web-application-server you want to test.

```bash

ssh root@alba-ctl.tf.local

cd testsuite
vim /root/.bashrc
```
Change this line ```export SERVER=127.0.0.1``` with your server configuration.

Reload the bashrc. 
```bash
source /root/.bashrc
```

## If your server is using ssl and certificates.

If your server is https app which is almost the case, you need to get the certificate and install it.

```bash

  ssh root@alba-ctl.tf.local
  # 1) get the pub cert of your server
  wget http://$SERVER/pub/RHN-ORG-TRUSTED-SSL-CERT -O /etc/pki/trust/anchors/$SERVER.cert
  update-ca-certificates
  # create chrome certs
  certutil -d sql:/root/.pki/nssdb -A -t TC -n "serverundertest" -i  /etc/pki/trust/anchors/$SERVER.cert
```

## Running the tests via cucumber rake and chrome-headless

```bash
  ssh root@alba-ctl.tf.local
  cd /root/testsuite
  rake
```

This will execute the file in the yml file in sequential order.
There is also a parallel execution mode, just look at rake tasks.
