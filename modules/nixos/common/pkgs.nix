{pkgs, ...}: {
  flake.nixosModules = {
    common = {
      clientHost = {
        environment.systemPackages = with pkgs; [
          nix-prefetch-github
        ];
      };
    };
  };
}
