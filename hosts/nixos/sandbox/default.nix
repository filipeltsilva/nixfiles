{
  self,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    # ./style.nix
    self.flakeModules.nixosHost
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  system.stateVersion = "25.05";
}
