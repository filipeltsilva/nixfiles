{
  inputs,
  pkgs,
  ...
}: {
  imports = inputs.nix-wire.lib.autoImport ./.;

  documentation.man.cache.enable = true;

  environment = {
    shellAliases = {
      nrb = "sudo nixos-rebuild switch --flake .";
    };

    systemPackages = with pkgs; [
      nix-prefetch-github
    ];
  };
}
