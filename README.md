# crond-plus

This is a simple Alpine image that runs `crond`. It has `bash`, `curl`, `docker-cli`, `git`, `jq`, and `openssh-client` installed, so you can write some mildly interesting cron jobs.

If you bind something executable into the container at `/etc/rc.local`, it will run it before it starts `crond`. The container has a healthcheck that will not pass until after `/etc/rc.local` is finished. You can use this along with `depends_on` in a `docker-compose.yml` file to execute some commands before bringing up other containers.
