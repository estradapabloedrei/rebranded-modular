let
  deps = {
    nixpkgs = builtins.fetchTree {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      rev = "9dcb002ca1690658be4a04645215baea8b95f31d";
      narHash = "sha256-9jVDGZnvCckTGdYT53d/EfznygLskyLQXYwJLKMPsZs=";
    };
  };
in {
  nixpkgs = (import "${deps.nixpkgs.outPath}/flake.nix").outputs { self = deps.nixpkgs; };
}
