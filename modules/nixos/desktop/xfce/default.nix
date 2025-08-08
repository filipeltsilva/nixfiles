{
  config,
  pkgs,
  ...
}: {

  services.xserver = {
    enable = true;

    desktopManager.xfce.enable = true;
    displayManager.lightdm.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    xfce.xfce4-pulseaudio-plugin
  ];
  
  services.displayManager.defaultSession = "xfce";
}
