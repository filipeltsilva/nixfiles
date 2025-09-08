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

    ./modules.nix
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

  system.stateVersion = "25.05";
}
