{
  flake.modules.generic.core = {
    environment.shellAliases = {
      cat = "bat";
      nfc = "nix flake check --all-systems";
      nfu = "nix flake update";
      q = "exit";
    };
  };
}
