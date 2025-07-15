{
  inputs,
  outputs,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    backupFileExtension = "home-manager-backup";
    extraSpecialArgs = {inherit inputs outputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.filipelemos = {
      home = {
        username = "filipelemos";
        homeDirectory = "/home/filipelemos";
        stateVersion = "25.11";
      };
    };
  };
}
