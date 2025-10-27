{pkgs, inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    # ./style.nix
    inputs.self.nixosModules.base
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  system.stateVersion = "25.05";
}
