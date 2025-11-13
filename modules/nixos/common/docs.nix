{
  flake.nixosModules = {
    common = {
      documentation.man.generateCaches = true;
    };
  };
}
