{
  pkgs,
  self,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    # ./style.nix
    self.nixosModules.default
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  system.stateVersion = "25.05";
}
