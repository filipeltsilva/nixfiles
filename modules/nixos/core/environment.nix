{
  flake.modules.nixos.core = {
    environment.shellAliases = {
      nrb = "sudo nixos-rebuild switch --flake .";
    };
  };
}
