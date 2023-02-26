# Oxid 6 workspace template for gitpod.io

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/derroylo/oxid-workspace-sample)

## What is Gitpod?
Gitpod is a cloud development environment: https://www.gitpod.io/

## Documentation
- Gitpod https://www.gitpod.io/docs/introduction/getting-started
- Dockerfile https://github.com/gitpod-io/workspace-images/blob/main/chunks/tool-nginx/Dockerfile
- gitpod.yml https://www.gitpod.io/docs/references/gitpod-yml

## Informations
Change the active version for PHP: https://github.com/oerdnj/deb.sury.org/wiki/Managing-Multiple-Versions
(When you select not the newest version of PHP then you might need to install additional packages like curl, zip etc. as shown in the oxid installation script `.devEnv/gitpod/scripts/install_oxid_demo.sh`

Available Services:
- MySQL (Database)
- Mailhog (Testing of mail delivery)
- Redis (Cache - Key-Value In-Memory Database)
- PhpMyAdmin (Administrationinterface for MySQL)
- PhpCacheAdmin (Administrationinterface for Redis)

Within the docker-compose.yml you can find these services, configure them or also add new ones.

The often used phpinfo()(which shows the current PHP-Version, which modules are installed and how they are configured) can be accessed once you start the workspace and add `/phpinfo` to the webserver url (`https://8000-xxxxx.ws-xx.gitpod.io/`)

The installation of OXID will be done via an install script that can be found under `.devEnv/gitpod/scripts/install_oxid_demo.sh`

## Important notice
Once you start the workspace and the OXID installer is showing, you will notice that `mod_rewrite` is labeled as red and the installation can not continue. That is a false positive error message and occurs because how gitpod handles port forwarding internaly. To correct it you need to edit the following file `oxid-esales/oxideshop-ce/source/Core/SystemRequirements.php`. Within the function `getRequiredModules` the entry for `mod_rewrite` needs to be removed.

During the installation process you will get asked for the database connection. Enter `localhost:3306` as host and leave the port field empty. The user for the database is `root` and the password is `gitpod`
