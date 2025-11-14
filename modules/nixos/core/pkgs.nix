{pkgs, ...}: {
  flake.modules.nixos.core = {
    environment.systemPackages = with pkgs; [
      nix-prefetch-github
    ];
  };
}
