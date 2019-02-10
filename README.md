## Simple supervisord container based on python3.7-alpine linux.

The supervisord is setup as the entrypoint of the container and is condfigured to load configs from /etc/supervisor/conf.d/.

The purpose of this image is prepare ready python3 app (e.g: Django) running with suppervisord.
To do this, add configs to /etc/supervisor/conf.d/. Each layer can have its own processes.
