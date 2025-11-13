{
  flake.nixosModules = {
    desktop.gnome = {
      services.desktopManager.gnome.enable = true;
      services.displayManager.gdm.enable = true;
    };
  };
}
