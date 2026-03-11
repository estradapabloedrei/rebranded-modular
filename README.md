rebranded-modular
minimalist, flat nix environment. pure and reproducible.

commands (cloud):
nix-shell -E 'import (builtins.fetchTarball "https://github.com/estradapabloedrei/rebranded-modular/archive/main.tar.gz")'

commands (local):
curl -L https://github.com/estradapabloedrei/rebranded-modular/archive/main.tar.gz | tar -xz --strip-components=1

credits:
unflake by goldstein (https://codeberg.org/goldstein/unflake)

license:
this work is published under the wtfpl – do what the fuck you want to public license.
