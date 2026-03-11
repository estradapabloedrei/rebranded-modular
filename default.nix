let
  engine = import ./unflake.nix;
  pkgs = engine.nixpkgs.legacyPackages.${builtins.currentSystem};
  blueprint = import ./blueprint.nix pkgs;
  rules = import ./rules.nix;
in
pkgs.mkShell {
  buildInputs = blueprint;
  shellHook = rules.hook;
}
