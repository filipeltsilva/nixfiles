{
  pkgs,
  inputs,
  outputs,
  lib,
  user,
  userEmail,
  userFullName,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.stylix.nixosModules.stylix

    ../default
    ./hardware-configuration.nix

    # ../../../modules/nixos/desktop/xfce
    ../../modules/nixvim

    ./style.nix
    ../../modules
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager = {
    backupFileExtension = lib.mkDefault "hm_backup";
    extraSpecialArgs = {inherit inputs outputs user userEmail userFullName;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${user} = {
      imports = [./home.nix];
      home = {
        username = "${user}";
        homeDirectory = "/home/${user}";
        stateVersion = "25.05";
      };
    };
  };

  desktop.xfce.enable = true;
  system.stateVersion = "25.05";
}
