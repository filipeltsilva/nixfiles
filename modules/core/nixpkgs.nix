{
  flake.modules.generic.core = {
    nixpkgs = {
      config = {
        allowBroken = true;
        allowUnfree = true;
      };
    };
  };
}
