{inputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    backupFileExtension = "hm_backup";
    extraSpecialArgs = {inherit inputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.filipelemos = {
      home = {
        homeDirectory = "/home/filipelemos";
        username = "filipelemos";
        stateVersion = "25.11";
      };
    };
  };
}
