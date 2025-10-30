{
  flake.nixosModules.default = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      nix-prefetch-github
    ];
  };
}
