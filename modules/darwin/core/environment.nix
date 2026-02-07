{
  flake.modules.darwin.core = {
    environment.shellAliases = {
      drb = "sudo darwin-rebuild switch --flake .";
    };
  };
}
