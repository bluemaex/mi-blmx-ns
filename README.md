# mi-blmx-ns

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## Auto generating zonefiles

The generation script expects your zonefiles templates in ``/opt/zonedata`` and regenerates them when your IP changes.
For an example how such an template should like see the test file here: https://github.com/bluemaex/generate-zonefile/blob/master/test.json

## services

- `53/tcp`: dns
- `53/udp`: dns
