{
  inputs,
  me,
  ...
}: {
  flake.modules.darwin.base = {
    imports = [
      inputs.home-manager.darwinModules.home-manager
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
