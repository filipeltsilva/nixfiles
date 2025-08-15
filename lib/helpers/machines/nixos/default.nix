{pkgs, ...}: {
  imports = [
    ./bootloader.nix
    ./i18n.nix
  ];

  documentation.man.generateCaches = true;

  environment.systemPackages = with pkgs; [
    nix-prefetch-github
  ];

  time.timeZone = "America/Sao_Paulo";
}
