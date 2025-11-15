{pkgs, ...}: {
  flake.modules.nixos.core_host = {
    environment.systemPackages = [
      pkgs.nix-prefetch-github
    ];
  };
}
