{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs { }
, ...
}:
with pkgs;
let
  packages = rec {
    zoxide = callPackage ./pkgs/zoxide { };
    inherit pkgs;
  };
in
packages
