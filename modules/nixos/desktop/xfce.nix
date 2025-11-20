{lib, ...}: {
  flake.modules = {
    nixos.xfce = {pkgs, ...}: {
      services.xserver = {
        enable = lib.mkDefault true;

        desktopManager.xfce.enable = lib.mkDefault true;
        displayManager.lightdm.enable = lib.mkDefault true;
      };

      environment.systemPackages = with pkgs; [
        xfce.xfce4-pulseaudio-plugin
      ];

      services.displayManager.defaultSession = "xfce";
    };
  };
}
