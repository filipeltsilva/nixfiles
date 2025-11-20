{inputs, me, ...}: {
  flake.modules.nixos.client_host = {
    imports = [
      inputs.home-manager.nixosModules.home-manager
      {
        home-manager = {
          backupFileExtension = "hm_backup";
          extraSpecialArgs = {inherit inputs me;};
          useGlobalPkgs = true;
          useUserPackages = true;
        };
      }
    ];
  };
}
