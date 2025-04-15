{
  nixpkgs,
  home-manager,
  ...
} @ inputs: let
  hostSetup = {hostName}: {
    nixosConfigurations = {
      ${hostName} = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          hosts/${hostName}

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              backupFileExtension = "hm-backup";
              useGlobalPkgs = true;
              useUserPackages = true;
              users.filipelemos = import ./home-manager/sandbox.nix;
              extraSpecialArgs = {inherit inputs;};
            };
          }
        ];
      };
    };
  };
in
  hostSetup
