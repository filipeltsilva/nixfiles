{
  imports = [
    ./bootloader.nix
    ./i18n.nix
    ./nix.nix
  ];

  documentation.man.generateCaches = true;
}
