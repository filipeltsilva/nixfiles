{
  flake,
  pkgs,
  ...
}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  documentation.man.cache.enable = true;

  environment.systemPackages = with pkgs; [
    nix-prefetch-github
  ];
}
