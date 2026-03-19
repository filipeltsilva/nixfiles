{
  flake.modules.generic.core = {
    environment.shellAliases = {
      cat = "bat";
      ncg = "nix-collect-garbage -d";
      nfc = "nix flake check --all-systems";
      nfu = "nix flake update";
      q = "exit";
    };
  };
}
