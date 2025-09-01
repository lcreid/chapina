# chapina

Aplicativo para promover participación cívica de chapinxs en el exterior

## Desarrollo

Usamos Docker:

```bash
docker-compose up
```

En otro Terminal:

```bash
docker ps
docker exec -it <container-ID> /bin/bash
```

En Linux, cree un archivo `compose.override.yml`, así:

```yaml
version: '3.3'

# https://blog.giovannidemizio.eu/2021/05/24/how-to-set-user-and-group-in-docker-compose/

services:
  web: &web
    # You have to set the user and group for this process, because you're going to be
    # creating all kinds of files from inside the container, than need to persist
    # outside the container. Every `rails g` for example. E-mails in the `tmp` directory.
    # Etc.
    user: 1000:1000
```

En el cual el `1000:1000` es el número de usuario y número de grupo suyo en el host.
