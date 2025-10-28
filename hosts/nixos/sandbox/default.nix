{pkgs, config, ...}: {
  imports = [
    ./hardware-configuration.nix
    # ./style.nix
    # self'.flake.nixosModules.base
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  system.stateVersion = "25.05";
}
