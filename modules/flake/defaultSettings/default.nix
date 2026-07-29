{flake, ...}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;
}
