{
  flake.modules.generic.core = {
    nixpkgs = {
      config.allowUnfree = true;
    };
  };
}
