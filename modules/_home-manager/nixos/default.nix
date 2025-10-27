{
  config,
  lib,
  inputs,
  outputs,
  user,
  userEmail,
  userFullName,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  options.homeManager.nixos = {
    enable = lib.mkEnableOption "Enable Home Manager";
  };

  config = lib.mkIf config.homeManager.nixos.enable {
    home-manager = {
      backupFileExtension = lib.mkDefault "hm_backup";
      extraSpecialArgs = {inherit inputs outputs user userEmail userFullName;};
      useGlobalPkgs = true;
      useUserPackages = true;
      users.${user} = {
        # imports = [../../machines/${machineName}/home.nix];
        home = {
          username = "${user}";
          stateVersion = "25.05";
        };
      };
    };
  };
}
