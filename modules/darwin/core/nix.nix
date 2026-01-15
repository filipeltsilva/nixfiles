{
  flake.modules.darwin.core = {
    nix.linux-builder = {
      enable = true;
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
    };
  };
}
