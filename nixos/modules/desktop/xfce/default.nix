{
  config,
  lib,
  pkgs,
  ...
}: {
  options.desktop.xfce = {
    enable = lib.mkEnableOption "Enable XFCE Desktop";
  };

  config = lib.mkIf config.desktop.xfce.enable {
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
}
