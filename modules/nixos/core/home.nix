{
  inputs,
  me,
  ...
}: {
  flake.modules.nixos.core = {
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
