
# Installation
Just execute `install.sh` as root.

Example:
```sh
$ sudo ./install.sh
```

## Environments
It can receive options as environment variables.

Example:
```sh
$ sudo CODE_USER="root" CODE_OPTIONS="--auth none" CODE_VERSION="2.1692-vsc1.39.2" CODE_ARCH="linux-x86_64" ./install.sh
```

All environment values are omittable.
Omitted values will be complemented with the above (example) values automatically.

- `CODE_USER`: code-server execution user.
- `CODE_OPTIONS`: code-server options.
- `CODE_VERSION`: code-server version, this is used when it downloads a binary.
- `CODE_ARCH`: host's architecture, this is used when it downloads a binary.

# Operations

Start:
```sh
$ sudo systemctl start code-server.service
```

Stop:
```sh
$ sudo systemctl stop code-server.service
```

Restart:
```sh
$ sudo systemctl restart code-server.service
```

