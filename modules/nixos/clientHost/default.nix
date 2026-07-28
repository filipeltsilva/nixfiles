{flake, ...}: {
  imports = flake.nix-wire.lib.autoImport ./.;
}
