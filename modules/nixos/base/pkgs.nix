{
  flake.flakeModules.nixosHost = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      nix-prefetch-github
    ];
  };
}
