{
  flake.nixosModules.core_host = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      nix-prefetch-github
    ];
  };
}
