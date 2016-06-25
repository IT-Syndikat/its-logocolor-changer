# its-logocolor-changer

## installation
- copy all files to some directory that is web-accessible
- change cd to that directory or make paths absolute
- make sure your webserver's caching for that directory is disabled
- make logo.png readable for your webserver
- create a cronjob that executes status.sh regularily


### Example for NGINX config 

```
location /its-color {
	expires 0;
	break;
}
```

### Example cron entry

```
1 * * * * /var/www/its-color/status.sh
```
