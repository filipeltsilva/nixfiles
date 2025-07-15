{pkgs, ...}: {
  imports = [
    ./bootloader.nix
    ./i18n.nix
    ./nix.nix
  ];

  documentation.man.generateCaches = true;

  environment.systemPackages = with pkgs; [
    nix-prefetch-github
  ];

  nixpkgs = {
    config.allowUnfree = true;
  };
}
